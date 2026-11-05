require "erb"

# One shared page, rendered once per design option.
PINBOARD_HEADLINE = "Stuck on a software problem? I've probably fixed one just like it.".freeze

OPTIONS = {
  "a" => { headline: "I untangle software for tech teams and small businesses.", styles: %w[option-a], body: "option-a" },
  "b" => { headline: PINBOARD_HEADLINE, styles: %w[option-b], body: "option-b" },
  "c" => { headline: "Thirteen years of building software, from GitHub and Stripe to a sauna in Portland.", styles: %w[option-c], body: "option-c" },
  "b-sage" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-sage" },
  "b-cornflower" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-cornflower" },
  "b-lime" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime" },
  "b-lime-charcoal" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime ink-charcoal" },
  "b-lime-forest" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime ink-forest" },
  "b-lime-navy" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime ink-navy" },
  "b-lime-warm" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime ink-warm" },
  "b-lime-soft" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime ink-soft" },
  "b-lime-cool" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime ink-cool" },
  "b-lime-m1" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime lowc ink-m1" },
  "b-lime-m2" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime lowc ink-m2" },
  "b-lime-m3" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime lowc ink-m3" },
  "b-lime-butter" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-butter" },
  "b-lime-grey" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-grey" },
  "b-lime-sky" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-sky" },
  "b-lime-kraft" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-kraft" },
  "b-lime-clear" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-clear" },
  "b-lime-alllime" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-lime" },
  "b-lime-sage" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-sage" },
  "b-lime-cobalt" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-cobalt" },
  "b-lime-p1" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-p1" },
  "b-lime-p2" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-p2" },
  "b-lime-p3" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-p3" },
  "b-lime-p4" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-p4" },
  "b-lime-p5" => { headline: PINBOARD_HEADLINE, styles: %w[option-b themes], body: "option-b theme-lime tape-p5" }
}.freeze

dir = __dir__
template = ERB.new(File.read(File.join(dir, "page.html.erb")))

OPTIONS.each do |key, option|
  html = template.result_with_hash(key: key, **option)
  File.write(File.join(dir, "option-#{key}.html"), html)
end
