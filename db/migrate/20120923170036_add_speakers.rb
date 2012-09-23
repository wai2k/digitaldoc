class AddSpeakers < ActiveRecord::Migration
  def up
    [
      {
        name: "Dr Ed Wallitt",
        image: "ed.jpeg",
        twitter_handle: "PodmedicsEd",
        linkedin_id: "edward-wallitt/18/a5b/231",
        github_handle: "edwallitt",
        email: "ed@podmedics.com",
        bio: %Q{
          Ed Wallitt is a doctor and the founder of Podmedics.com - an award winning website providing high quality educational podcasts to medical students throughout out the world
        
          He recently left clinical medicine to start up the medical IT consultancy branch of Podmedics (http://podmedics.org) that provides consultancy and software development services to many major trusts across the UK, as well as healthcare-related UK startups.
        }
      },

      {
        name: "Dr Wai Keong Wong",
        image: "wai.gif",
        twitter_handle: "wai2k",
        linkedin_id: "wai-keong-wong/27/162/8a6",
        bio: %Q{Wai Keong is a doctor specialising in haematology with a passion for improving the quality of healthcare delivery by harnessing the possibilities that technology and IT creates. He believes that clinicians play a crucial role in this transformation. He is the chair of the EHI CCIO Leaders Network Advisory Panel and is actively involved in efforts to give patients greater control and access to their medical records}
      },

      {
        name: "Dr Stevan Wing",
        image: "stevan.png",
        twitter_handle: "stevancw",
        bio: %Q{
          Stevan is an academic neurology registrar in the East of England. His research at the University of Cambridge focuses on the cognitive aspects of movement disorders such as Parkinson's disease.
        
          Stevan completed his undergraduate degree and postgraduate general medical training in and around London and loves anything that makes his life easier. To this end he is interested in improving healthcare, research and scientific communication and seeks to re-design the relationship that clinicians and patients have with IT believing in simplicity and clarity of goals for information systems.

          Stevan can be found/contacted via: http://www.google.com
        }
      },

      {
        name: "Tom Lewis",
        image: "tom.png",
        twitter_handle: "thomasllewis",
        bio: %Q{Tom Lewis (@thomasllewis) is a third year postgraduate medical student at Warwick University and also an editor for renowned mobile medical technology website, iMedicalApps.com. He previously completed a degree in Physics from the University of Durham and is especially interested in the way mobile technology can be integrated and used to reform modern healthcare. His specialty interest is medical apps with a particular focus on medical education.}
      },

      {
        name: "Dr Anne Marie Cunningham",
        image: "amc.jpeg",
        twitter_handle: "amcunningham",
        bio: %Q{Anne Marie Cunningham is  a GP and a lecturer in Cardiff University School of Medicine. She leads on  eLearning in the undergraduate course there.She started exploring the potential of social media and networks for scholarship in medical education in 2008. Her (many) online presences are collated at www.about.me/amcunningham}
      },


      {
        name: "Jeremy Walker",
        image: "jeremy.gif",
        twitter_handle: "iHiD",
        github_handle: "iHiD",
        email: "jez.walker@gmail.com",
        bio: %Q{Jeremy Walker is the technical co-founder of Meducation - the social education network for medical students and professionals. He has been programming since the age of 9 and has a degree in Computer Science and Artificial Intelligence. He previously ran a small software consultancy before starting Meducation with Dr Alastair Buick. He wants to use technology to make the world a better place, especially within the fields of education and health-care. He blogs at <a href="http://www.ihid.co.uk">http://www.ihid.co.uk</a>}
      }
    ].each do |details|
      image_filename = details.delete(:image)
      speaker = Speaker.new(details)
      speaker.avatar = File.open(Rails.root.join("lib", "images", image_filename))
      speaker.save!
    end
  end
end
