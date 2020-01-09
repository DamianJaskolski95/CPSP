describe 'parser' do
  unsorted_array = [
    ['/help_page/1', '126.318.035.038'],
    ['/contact', '184.123.665.067'],
    ['/home', '184.123.665.067'],
    ['/about/2', '444.701.448.104'],
    ['/help_page/1', '929.398.951.889'],
    ['/index', '444.701.448.104'],
    ['/help_page/1', '722.247.931.582'],
    ['/about', '061.945.150.735'],
    ['/help_page/1', '646.865.545.408'],
    ['/home', '235.313.352.950'],
    ['/contact', '184.123.665.067'],
    ['/help_page/1', '543.910.244.929'],
    ['/index', '316.433.849.805'],
    ['/index', '802.683.925.780'],
    ['/home', '316.433.849.805'],
    ['/about/2', '444.701.448.104'],
    ['/home', '184.123.665.067'],
    ['/contact', '543.910.244.929'],
    ['/about', '126.318.035.038'],
    ['/about/2', '836.973.694.403'],
    ['/index', '316.433.849.805'],
    ['/index', '802.683.925.780'],
    ['/help_page/1', '929.398.951.889']
  ]

  valid_array_counted = [
    ['/help_page/1', 6],
    ['/contact', 3],
    ['/home', 4],
    ['/about/2', 3],
    ['/index', 5],
    ['/about', 2]
  ]

  valid_array_sorted = [
    ['/help_page/1', 6],
    ['/index', 5],
    ['/home', 4],
    ['/about/2', 3],
    ['/contact', 3],
    ['/about', 2]
  ]

  valid_unique_counted = [
    ['/help_page/1', 5],
    ['/contact', 2],
    ['/home', 3],
    ['/about/2', 2],
    ['/index', 3],
    ['/about', 2]
  ]

  valid_unique_sorted = [
    ['/help_page/1', 5],
    ['/home', 3],
    ['/index', 3],
    ['/about', 2],
    ['/about/2', 2],
    ['/contact', 2]
  ]
end
