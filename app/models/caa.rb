# See #CAA
#
# = DNS Certificate Authority Authorization (CAA)
# Lists the CA's that are allowed to issue a certificate
# for the given domain.
class CAA < Record
  validates :content, format: { with: /\Aissue ".*"\Z/, message: 'CAA records must be in the form: issue "<ca>"' }
end
