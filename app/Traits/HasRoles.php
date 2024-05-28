<?php 

namespace App\Traits;

use App\Models\Role;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

trait HasRoles
{
    public function roles() : BelongsToMany
    {
        return $this->belongsToMany(Role::class, 'user_role');
    }

    public function assignRole(Role $role) : Model
    {
        return $this->roles()->save($role);
    }
    public function isAdmin(): bool
    {
        return $this->roles()->where('name', 'admin')->exists();
    }

    public function isPartner(): bool
    {
        return $this->roles()->where('name', 'partner')->exists();
    }

    public function hasRole(String $role)
    {
        return $this->roles()->where('name', $role)->exists();
    }

}