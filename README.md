# Ionic Framework for Rails 4

[Ionic Framework](http://ionicframework.com) for Rails 4 and later. 

## Version

Ionic Framework 1.3.1 El Salvador (2016-05-12)

## Rails 4 or later

Add to your Gemfile:

    gem 'ionic-rails-engine', git: 'git://github.com/omobono/ionic-rails-engine.git'

Add the JavaScript into application.js:

    //= require angular/angular
    //= require angular/angular-animate
    //= require angular/angular-resource
    //= require angular/angular-sanitize
    //= require angular-ui/angular-ui-router
    //= require ionic/ionic
    //= require ionic/ionic-angular
    //= require ionicuirouter/ionicUIRouter

Create `app/assets/stylesheets/ionic.app.scss':
 
    /*
    To customize the look and feel of Ionic, you can override the variables
    in ionic's _variables.scss file.
    
    For example, you might change some of the default colors:
    
    $light:                           #fff !default;
    $stable:                          #f8f8f8 !default;
    $positive:                        #387ef5 !default;
    $calm:                            #11c1f3 !default;
    $balanced:                        #33cd5f !default;
    $energized:                       #ffc900 !default;
    $assertive:                       #ef473a !default;
    $royal:                           #886aea !default;
    $dark:                            #444 !default;
    */
    
    // Import app variables (NEEDS TO GO BEFORE THE IONIC IMPORT)
    @import "variables";
    
    // Include all of Ionic
    //@import "ionic/ionic";
    
    // Include the Ionic components we require for this app
    @import "ionic-custom";
    
    // Import app-specific styles
    @import "app/app";

Create `app/assets/stylesheets/ionic-custom.scss`:

    @charset "UTF-8";
    //
    // NOTE:
    //
    // This is a copied and customized version of the master "ionic.scss" file.
    // Purpose is to be able to EXCLUDE components or substitute your own components by providing an alternative
    //
    
    @import
      // Ionicons
    "ionic/ionicons/ionicons",
    
      // Variables
    "ionic/mixins",
    "ionic/variables",
    
      // Base
    "ionic/reset",
    "ionic/scaffolding",
    "ionic/type",
    
      // Components
    "ionic/action-sheet",
    "ionic/backdrop",
    "ionic/bar",
    "ionic/tabs",
    "ionic/menu",
    "ionic/modal",
    "ionic/popover",
    "ionic/popup",
    "ionic/loading",
    "ionic/items",
    "ionic/list",
    "ionic/badge",
    "ionic/slide-box",
    "ionic/slides",
    "ionic/refresher",
    "ionic/spinner",
    
      // Forms
    "ionic/form",
    "ionic/checkbox",
    "ionic/toggle",
    "ionic/radio",
    "ionic/range",
    "ionic/select",
    "ionic/progress",
    
      // Buttons
    "ionic/button",
    "ionic/button-bar",
    
      // Util
    "ionic/grid",
    "ionic/util",
    "ionic/platform",
    
      // Animations
    "ionic/animations",
    "ionic/transitions";

Create `app/assets/stylesheets/variables.scss`:

    /*
        Variables
    */
    
    /*
    To customize the look and feel of Ionic, you can override the variables
    in Ionic's _variables.scss file.
    For example, you might change some of the default colors:
    $light:                           #fff !default;
    $stable:                          #f8f8f8 !default;
    $positive:                        #4a87ee !default;
    $calm:                            #43cee6 !default;
    $balanced:                        #66cc33 !default;
    $energized:                       #f0b840 !default;
    $assertive:                       #ef4e3a !default;
    $royal:                           #886aea !default;
    $dark:                            #444 !default;
    */
    
    //DEFINE BASE FONT
    $font-family-base: 'Frutiger Next Regular', sans-serif, !default;
    
    // DEFINITION OF THEMEABLE PRIMARY AND SECONDARY 'BRAND' COLORS
    $positive:                                #006FBA !default; //P&G French Blue
    
    // The primary 'brand' color
    $brand-primary:                           $positive !default;
    // The secondary 'brand' color
    $brand-secondary: lighten($brand-primary, 15%);
    // A neutral "non-branded" color
    $neutral: lighten(grey, 20%);
    
    // For ionic-content-banner
    $content-banner-info-bg: $brand-secondary !default;
    
    // dark color variable needed for definitions further on
    $dark:                              #444 !default;
    
    // ADDED: "note" and "link" text colors for our theme
    $note-color:                        #aaa !default;
    $link-color:                        darken($note-color, 35%) !default;
    
    // CUSTOMIZED: somewhat darker inpu field placeholder color
    $input-color-placeholder:           lighten($dark, 15%) !default;
    
    // CUSTOMIZE THE TITLE BAR HEIGHT HERE
    //$bar-height:                      44px !default;    // 50px !default;
    //$bar-title-font-size:             17px !default;    // 21px !default;
    
    $bar-transparency:                1 !default;
    
    $button-primary-bg:                 $brand-primary !default;
    $button-primary-text:               #fff !default;
    $button-primary-border:             darken($brand-primary, 8%) !default;
    $button-primary-active-bg:          darken($brand-primary, 8%) !default;
    $button-primary-active-border:      darken($brand-primary, 8%) !default;
    
    $bar-primary-bg:                    rgba($button-primary-bg, $bar-transparency) !default;
    $bar-primary-text:                  $button-primary-text !default;
    $bar-primary-border:                $button-primary-border !default;
    $bar-primary-active-bg:             $button-primary-active-bg !default;
    $bar-primary-active-border:         $button-primary-active-border !default;
    
    $button-secondary-bg:                 $brand-secondary !default;
    $button-secondary-text:               #fff !default;
    $button-secondary-border:             darken($brand-secondary, 8%) !default;
    $button-secondary-active-bg:          darken($brand-secondary, 8%) !default;
    $button-secondary-active-border:      darken($brand-secondary, 8%) !default;
    
    $bar-secondary-bg:                    rgba($button-secondary-bg, $bar-transparency) !default;
    $bar-secondary-text:                  $button-secondary-text !default;
    $bar-secondary-border:                $button-secondary-border !default;
    $bar-secondary-active-bg:             $button-secondary-active-bg !default;
    $bar-secondary-active-border:         $button-secondary-active-border !default;
    
    $button-neutral-bg:                 $neutral !default;
    $button-neutral-text:               #fff !default;
    $button-neutral-border:             darken($neutral, 8%) !default;
    $button-neutral-active-bg:          darken($neutral, 8%) !default;
    $button-neutral-active-border:      darken($neutral, 8%) !default;
    
    // TABS
    
    // customize the height etc here
    //$tabs-height:                     49px !default;
    $tabs-height:                     40px !default;
    //$tabs-text-font-size:             14px !default;
    //$tabs-text-font-size-side-icon:   10px !default;
    //$tabs-icon-size:                  32px !default;
    //$tabs-badge-padding:              1px 6px !default;
    //$tabs-badge-font-size:            12px !default;
    
    $tabs-brand:                         $brand-secondary !default;
    $tabs-brand-bg:                      $button-secondary-bg !default;
    $tabs-brand-border:                  $button-secondary-border !default;
    $tabs-brand-text:                    $button-secondary-text !default;
    $bar-brand-border:                   $bar-secondary-border !default;

Add the stylesheet into application.css:

      *= require 'frontend/ionic.app'

## License

Copyright (c) 2012-2013 Yen-Ju Chen
Copyright (c) 2016 Omobono

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
