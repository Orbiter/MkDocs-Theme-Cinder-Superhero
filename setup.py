from setuptools import setup, find_packages

VERSION = '0.1.0'


setup(
    name="mkdocs-cinder",
    version=VERSION,
    url='https://github.com/chrissimpkins/cinder',
    license='MIT',
    description='A clean responsive theme for the MkDocs static documentation site generator',
    author='Christopher Simpkins',
    author_email='git.simpkins@gmail.com',
    packages=find_packages(),
    include_package_data=True,
    entry_points={
        'mkdocs.themes': [
            'cinder = cinder',
        ]
    },
    zip_safe=False
)
