<h1>Cinder Theme <small>for MkDocs</small></h1>

## About

Cinder is a clean, responsive theme for static documentation sites that are generated with [MkDocs](https://github.com/mkdocs/mkdocs). It's built on the [Bootstrap framework](http://getbootstrap.com/) and includes pre-packaged syntax highlighting ([highlight.js](https://highlightjs.org/)), icons (<i class="fa fa-flag"></i> [FontAwesome](https://fortawesome.github.io/Font-Awesome/)), and a smashingly legible type scheme to get your message out to your users.

You are looking at the theme and can see a selection of the theme elements on the [Specimen page](/specimen/).

## Install

**<em>Required</em>**: Python 2.6+ or 3.3+

### Install MkDocs & Create a New Project

If you haven't installed MkDocs yet, use the following command to install it:

<pre><code class="nohighlight">$ pip install mkdocs</code></pre>

Next, navigate to a clean directory and create a new MkDocs project with the following command:

<pre><code class="nohighlight">$ mkdocs new [projectname]</code></pre>

Replace `[projectname]` with the name of your project (without the brackets).

Then navigate to the root of your project directory:

<pre><code class="nohighlight">$ cd [projectname]</code></pre>

### Install the Cinder Theme

Download the Cinder theme archive.

<a href="https://github.com/chrissimpkins/cinder/releases/download/v0.9.0/cinder.zip"><button type="button" class="btn btn-success"><i class="fa fa-cloud-download"></i>  Download Cinder v0.9.0</button></a>

Create a directory in your MkDocs project called `cinder`.

<pre><code class="nohighlight">$ mkdir cinder</code></pre>

Place the downloaded theme archive inside the new `cinder` directory and unpack it.

Your project directory should now look like this:

<pre><code class="nohighlight">.
├── mkdocs.yml
├── cinder
│     ├── css
│     ├── img
│     ├── js
│     ├── base.html
│     ├── content.html
│     ├── 404.html
│     ├── nav-sub.html
│     ├── nav.html
│     └── toc.html
└── docs
      └── index.md
</code></pre>

### Complete Your Settings File

MkDocs projects use a YAML settings file called `mkdocs.yml`.  This is located in the root of your project directory after you use the `mkdocs new` command.  Open the file in a text editor and modify it to include the `theme_dir` setting as follows:

<pre><code class="yaml">site_name: [YOURPROJECT]
theme_dir: cinder
pages:
- Home: index.md
</code></pre>

## Test with a Local Site Server


Use the following command to establish a local server for your site:

<pre><code class="nohighlight">$ mkdocs serve</code></pre>

Then open your site in any browser at the URL `http://localhost:8000`.

## Create Your Site

### Add Content with Markdown Syntax

Get to work on your site home page by opening the `docs/index.md` file and editing it in Markdown syntax.  The HTML automatically updates in the browser when you save the Markdown file if you use the MkDocs server (see command above).

### Add New Pages

Add new pages to your site by creating a new Markdown file in your `docs` directory, then linking to the new page in the `mkdocs.yml` file.  This uses a `Page Name : Markdown file` syntax.

For example, to add an About page using a Markdown file that is located on the path `docs/about.md`, you would format the `mkdocs.yml` file as follows:

<pre><code class="yaml">site_name: [YOURPROJECT]
theme_dir: cinder
pages:
- Home: index.md
- About: about.md</code></pre>

Add additional pages to your site by repeating the above series of steps.

## Build Your Site

Build your site files with the command:

<pre><code class="nohighlight">$ mkdocs build</code></pre>

Your site files are built in the `site` directory and are ready to use.  Deploy the contents of the `site` directory to your web server.

## Site Customization

The following are a few common customizations that you might be interested in.  For much more detail about the configuration of your site, check out the [MkDocs Configuration documentation](https://github.com/mkdocs/mkdocs/blob/master/docs/user-guide/configuration.md).

### Site Favicon

Place your site favicon image file in the top level of your docs directory and then include a new `site_favicon:` field in the `mkdocs.yml` file:

<pre><code class="yaml">site_name: [YOURPROJECT]
theme_dir: cinder
site_favicon: favicon.ico
pages:
  - Home: index.md
  - About: about.md</code></pre>

### Add Your Own CSS Stylesheets

Create a `css` directory inside your `docs` directory and add your CSS files.  You can overwrite any of the Cinder styles in your CSS files.  Then include your CSS files in the `mkdocs.yml` file with the `extra_css` field:

<pre><code class="yaml">site_name: [YOURPROJECT]
theme_dir: cinder
extra_css:
  - css/mystyle.css
  - css/myotherstyle.css
pages:
  - Home: index.md
  - About: about.md</code></pre>

Your CSS styles fall at the end of the cascade and will override all styles included in the theme (including Bootstrap and default Cinder styles).


### Add Your Own JavaScript

Create a `js` directory inside your `docs` directory and add your JS files.  Then include your JS files in the `mkdocs.yml` file with the `extra_js` field:

<pre><code class="yaml">site_name: [YOURPROJECT]
theme_dir: cinder
extra_js:
  - js/myscript.js
  - js/myotherscript.js
pages:
  - Home: index.md
  - About: about.md</code></pre>


See the [MkDocs Configuration documentation](https://github.com/mkdocs/mkdocs/blob/master/docs/user-guide/configuration.md) for more information about configuration of your site.

## Issues

If you have any issues with the theme, please report them on the Cinder repository:

<a href="https://github.com/chrissimpkins/cinder/issues/new"><button class="btn btn-primary" type="submit">Report Issue</button></a>
<a href="https://github.com/chrissimpkins/cinder/issues"><button class="btn btn-primary" type="submit">Active Issues</button></a>

## License

Cinder is licensed under the MIT license. The full text of the license is available [here](https://github.com/chrissimpkins/cinder/blob/master/LICENSE.md).



