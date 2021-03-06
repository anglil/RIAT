class Question < CouchRest::Model::Base
  belongs_to :dataset
  
  property :answers, []
  property :gold_answers, []
  property :args, []
  property :doc_name, String
  property :spare5_job_id, String

  design do
    view :by_dataset_id
    view :by_doc_name
  end
  
end
