.class public Ln3/k/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/k/a/y$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ln3/k/a/y$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ln3/k/a/y$a;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p1, Ln3/k/a/y$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Ln3/k/a/y;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 4
    iget-object v0, p1, Ln3/k/a/y$a;->c:Ljava/lang/String;

    iput-object v0, p0, Ln3/k/a/y;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Ln3/k/a/y$a;->d:Ljava/lang/String;

    iput-object v0, p0, Ln3/k/a/y;->d:Ljava/lang/String;

    .line 6
    iget-boolean v0, p1, Ln3/k/a/y$a;->e:Z

    iput-boolean v0, p0, Ln3/k/a/y;->e:Z

    .line 7
    iget-boolean p1, p1, Ln3/k/a/y$a;->f:Z

    iput-boolean p1, p0, Ln3/k/a/y;->f:Z

    return-void
.end method

.method public static a(Landroid/app/Person;)Ln3/k/a/y;
    .locals 2

    .line 1
    new-instance v0, Ln3/k/a/y$a;

    invoke-direct {v0}, Ln3/k/a/y$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3
    iput-object v1, v0, Ln3/k/a/y$a;->a:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->f(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iput-object v1, v0, Ln3/k/a/y$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 7
    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 8
    iput-object v1, v0, Ln3/k/a/y$a;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 10
    iput-object v1, v0, Ln3/k/a/y$a;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroid/app/Person;->isBot()Z

    move-result v1

    .line 12
    iput-boolean v1, v0, Ln3/k/a/y$a;->e:Z

    .line 13
    invoke-virtual {p0}, Landroid/app/Person;->isImportant()Z

    move-result p0

    .line 14
    iput-boolean p0, v0, Ln3/k/a/y$a;->f:Z

    .line 15
    new-instance p0, Ln3/k/a/y;

    invoke-direct {p0, v0}, Ln3/k/a/y;-><init>(Ln3/k/a/y$a;)V

    return-object p0
.end method

.method public static b(Landroid/os/Bundle;)Ln3/k/a/y;
    .locals 6

    const-string v0, "icon"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/k/a/y$a;

    invoke-direct {v1}, Ln3/k/a/y$a;-><init>()V

    const-string v2, "name"

    .line 3
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4
    iput-object v2, v1, Ln3/k/a/y$a;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 5
    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    const-string v2, "type"

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 7
    new-instance v3, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v3, v2}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    const-string v4, "int1"

    .line 8
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/core/graphics/drawable/IconCompat;->e:I

    const-string v4, "int2"

    .line 9
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/core/graphics/drawable/IconCompat;->f:I

    const-string v4, "string1"

    .line 10
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    const-string v4, "tint_list"

    .line 11
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    iput-object v4, v3, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    :cond_0
    const-string v4, "tint_mode"

    .line 13
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-static {v4}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    const-string v4, "obj"

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 16
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v3, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_1

    .line 17
    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_1

    .line 18
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v3, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 19
    :goto_1
    iput-object v3, v1, Ln3/k/a/y$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    const-string v0, "uri"

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    iput-object v0, v1, Ln3/k/a/y$a;->c:Ljava/lang/String;

    const-string v0, "key"

    .line 22
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iput-object v0, v1, Ln3/k/a/y$a;->d:Ljava/lang/String;

    const-string v0, "isBot"

    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 25
    iput-boolean v0, v1, Ln3/k/a/y$a;->e:Z

    const-string v0, "isImportant"

    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 27
    iput-boolean p0, v1, Ln3/k/a/y$a;->f:Z

    .line 28
    new-instance p0, Ln3/k/a/y;

    invoke-direct {p0, v1}, Ln3/k/a/y;-><init>(Ln3/k/a/y$a;)V

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public c()Landroid/app/Person;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ln3/k/a/y;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->u()Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Ln3/k/a/y;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 8
    iget-object v1, p0, Ln3/k/a/y;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 10
    iget-boolean v1, p0, Ln3/k/a/y;->e:Z

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v0

    .line 12
    iget-boolean v1, p0, Ln3/k/a/y;->f:Z

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Ln3/k/a/y;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget v3, v1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const-string v4, "obj"

    packed-switch v3, :pswitch_data_0

    .line 7
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid icon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :pswitch_1
    iget-object v3, v1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 9
    :pswitch_2
    iget-object v3, v1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :pswitch_3
    iget-object v3, v1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 11
    :pswitch_4
    iget-object v3, v1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    :goto_0
    iget v3, v1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const-string v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget v3, v1, Landroidx/core/graphics/drawable/IconCompat;->e:I

    const-string v4, "int1"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    iget v3, v1, Landroidx/core/graphics/drawable/IconCompat;->f:I

    const-string v4, "int2"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    iget-object v3, v1, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    const-string v4, "string1"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v3, v1, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    const-string v4, "tint_list"

    .line 17
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    :cond_0
    iget-object v1, v1, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    sget-object v3, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v3, :cond_2

    .line 19
    invoke-virtual {v1}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tint_mode"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    const-string v1, "icon"

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21
    iget-object v1, p0, Ln3/k/a/y;->c:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Ln3/k/a/y;->d:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-boolean v1, p0, Ln3/k/a/y;->e:Z

    const-string v2, "isBot"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    iget-boolean v1, p0, Ln3/k/a/y;->f:Z

    const-string v2, "isImportant"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
