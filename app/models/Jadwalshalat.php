<?php

class Jadwalshalat extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $tanggal;

    /**
     *
     * @var string
     */
    public $subuh;

    /**
     *
     * @var string
     */
    public $zuhur;

    /**
     *
     * @var string
     */
    public $ashar;

    /**
     *
     * @var string
     */
    public $magrib;

    /**
     *
     * @var string
     */
    public $isya;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("muslim_life");
        $this->setSource("jadwalshalat");
    }

    // /**
    //  * Allows to query a set of records that match the specified conditions
    //  *
    //  * @param mixed $parameters
    //  * @return Jadwalshalat[]|Jadwalshalat|\Phalcon\Mvc\Model\ResultSetInterface
    //  */
    // public static function find($parameters = null): \Phalcon\Mvc\Model\ResultsetInterface
    // {
    //     return parent::find($parameters);
    // }

    // /**
    //  * Allows to query the first record that match the specified conditions
    //  *
    //  * @param mixed $parameters
    //  * @return Jadwalshalat|\Phalcon\Mvc\Model\ResultInterface
    //  */
    // public static function findFirst($parameters = null)
    // {
    //     return parent::findFirst($parameters);
    // }

}
