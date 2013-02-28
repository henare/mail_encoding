# encoding: UTF-8
require 'spec_helper'
require 'mail'

describe 'reading an email'  do
  let(:mail) { Mail.read(File.dirname(__FILE__) + '/quoted-subject-iso8859-1.email') }

  it 'reads the subject' do
    mail.subject.should == 'Câmara Responde:  Banco de ideias'
  end

  it 'reads the sender' do
    mail[:from].to_s.should == '"Coordenação de Relacionamento, Pesquisa e Informação/CEDI" <geraldinequango@localhost>'
  end
end
