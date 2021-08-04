## Open Traits Network Registry and Website

### What is this?

This is the registry and website for the Open Traits Network.

It uses GitHub pages and can be visited at: https://open-traits-network.github.io/

We map https://opentraits.org to this address.

This registry and website was inspired by http://github.com/OBOFoundry/OBOFoundry.github.io design (see also http://obofoundry.org) and borrows from it.

### How does it work?

The source can be found on https://github.com/open-traits-network/open-traits-network.github.io

It uses GitHub Pages/[Jekyll](https://en.wikipedia.org/wiki/Jekyll_%28software%29),
a popular static site generator.

GitHub pages [are integrated with github](https://help.github.com/articles/using-jekyll-with-pages/)
which means that the entire site can be seen on https://opentraits.org (we don't run a dedicated webserver) and https://open-traits-network.github.io . 

### I have some comments

You can use the [issue tracker](https://github.com/open-traits-network/open-traits-network.github.io/issues) but you may want to hold off til things are more stable

### I want to contribute

Please do! Anyone can fork and make PR, or [create an issue in the tracker](https://github.com/open-traits-network/open-traits-network.github.io/issues).

See [CONTRIBUTING.md](CONTRIBUTING.md)

## Repo Organization

 * [_datasets/](_datasets/)   `<-- source for trait dataset metadata (yml) and markdown for display`
    * [_datasets/chinaroots.md](_datasets/chinaroots.md)  `<-- one file for each datasets with yaml for metadata and markdown for display`
    * ...
 * [_members/](_members/)  `<-- source for open traits network members`
    * [_members/rachael-v-gallagher.md](_members/rachael-v-gallagher.md)  `<-- metadata (yml) and markdown for display. EDIT THIS`
    * ...
 * [_posts/](_posts) `<-- Blog posts/news`
 * [_layouts/](_layouts) `<-- Jekyll layouts`
 * [_includes/](_includes) `<-- Jekyll includes`

 ## Instructions for Registry Curators

### Add Member

See [_members/README.md](_members/README.md) for instructions on how to add a member to the OTN registry.

### Add Dataset

See [_datasets/README.md](_datasets/README.md) for instructions on how to add a dataset to the OTN registry.

## Instructions for Website developers

Consult online Jekyll docs for details. Basically you just do

   gem install jekyll

(I am currently using Jekyll 4.0.0)

You can run a local test install from the top level directory

    jekyll serve

Then open http://127.0.0.1:4000

Every commit is visible within a few minutes on: https://opentraits.org and https://open-traits-network.github.io .

You may want to work on a branch to avoid disrupting the live
site. Exact procedures for accepting changes back into master have yet
to be determined. See [CONTRIBUTING.md](CONTRIBUTING.md) for a draft.

The setup is fairly standard for Jekyll. We try and keep things minimal 
so that the site will work on github. Even if you have no knowledge of Jekyll, 
it is fairly easy to introspect what is going on if you have done much CMS work or
web development.

Basics:

 * source can be markdown or html
 * Different styles of pages go in _layouts
 * ...
