<?php
    class Geonames
    {
        private $base_url = 'http://api.geonames.org/';

        function __construct($username)
        {
            $this->username = $username;
            return $username;
        }

        private function connect($function, $parameters)
        {
            $str = '';

            $parameters['username'] = $this->username;

            $str = '';

            foreach ($parameters as $key => $value) {
                $str .= "{$key}={$value}&";
            }

            $ch = curl_init($this->base_url . $function . $str);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $result = json_decode(curl_exec($ch));
            curl_close($ch);
            return $result;
        }

        public function search($parameters)
        {
            $data = $this->connect('searchJSON?', $parameters);
            return $data;
        }

        public function findNearByWikipedia($parameters)
        {
            $data = $this->connect('wikipediaSearchJSON?', $parameters);
            return $data;
        }

        public function wikipediaSearch($parameters)
        {
            $data = $this->connect('wikipediaSearchJSON?', $parameters);
            return $data;
        }

        public function findNearByWeather($parameters)
        {
            $data = $this->connect("findNearByWeatherJSON?", $parameters);
            return $data;
        }
    }
?>