# See #CAA
#
# = DNS Certificate Authority Authorization (CAA)
# Lists the CA's that are allowed to issue a certificate
# for the given domain.
class CAA < Record
  validates :content, format: { with: /\A0 issue ".*"\Z/, message: 'CAA records must be in the form: 0 issue "<ca>"' }
end
