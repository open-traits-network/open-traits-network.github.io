The Open Traits Network maintains a member registry. This page aims to information to help OTN members and editors to do so.

[`process`](#member-registration-process) / [`creating member file`](#creating-a-member-file) / [`member profile`](#profile) / [`member photo`](#photo) 


# Member Registration Process

The member registration process is as follows:

1. prospective member opens a "register member" github issue via https://github.com/open-traits-network/open-traits-network.github.io/issues/new/choose
2. prospective member fills out the member registration form provided in the member registration issue template. This template is managed at [.github/ISSUE_TEMPLATES/register-member.md](../../../tree/master/.github/ISSUE_TEMPLATE/register-member.md) 
3. prospective member submits the issue
4. OTN editor [self-assigns](https://help.github.com/en/github/managing-your-work-on-github/assigning-issues-and-pull-requests-to-other-github-users) the issue to indicate to others the they are working on it.
5. OTN editor reviews the registration request, asking for information if needed via issue.
6. on approval, OTN editor creates a new member file, and commits/pushes the changes to the OTN registry repository.
7. OTN editor verifies that the new addition is available via https://opentraits.org
8. OTN editor notifies new member via issue comment and includes a link to the newly added OTN member profile.
9. OTN editor closes issue

If you'd like to improve the registration process, please open an issue and make suggestions. 

# Creating a member file

To create a new member file, first copy the text in the code formatted box below or re-use the template via an issue provided through the member registration process, including the three dashes at the top and bottom of the text. Next, go to the top of the page and click `Create new file` which is located on the top right, second menu down. Paste the copied text into the large textbox and fill in the information as per the instructions below. Leave a space after the colon on each line. Enter the same `id` in the small textfield at the top (the web link), which is your name with dashed instead of spaces (e.g. joshua-s-madin). Add `.md` as the extension to the new member file (e.g. joshua-s-madin.md). 

- `layout:` leave this as member
- `id:` enter your name with dashed instead of spaces (e.g. joshua-s-madin)
- `name:` enter your name with spaces (e.g. Joshua S Madin)
- `affiliation:` enter your affiliations (e.g. University of Hawaii)
- `email:` (optional) enter your email address
- `website:` (optional) enter full web address (i.e., include https://)
- `lat:` if you want to appear on the map, enter the `lat` and `long` of your institution in decimal degrees
- `long:` see above

Copy this:

```
---
layout: member
id: 
name: 
affiliation: 
email: 
website: 
lat: 
long: 
---
```
# Profile
Please also build a small profile of yourself for other OTN members to get to know you a little. This may include your taxa of interest, descriptions of your open datasets and a brief collaboration statement that details your expertise, achievements and interests in trait science. You can do this by adding text below the second --- 
See http://opentraits.org/members/jorrit-h-poelen or http://opentraits.org/members/rachael-v-gallagher for some examples. 

# Photo
The photo image should be stored in [`images/members`](images/members) in ```jpg``` format using your member.id as a filename (e.g., picture for member with id ```joshua-s-madin``` has image [`images/members/joshua-s-madin.jpg`](images/members/joshua-s-madin.jpg)), if `image` is not available but `github` is set the profile picture will be used on profile pages on on the member map.

