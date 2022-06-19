.class public Ln3/i/b/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/i/b/h/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ln3/i/b/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public final d:Ln3/i/b/h/d;

.field public final e:Ln3/i/b/h/c$a;

.field public f:Ln3/i/b/h/c;

.field public g:I

.field public h:I

.field public i:Ln3/i/b/g;


# direct methods
.method public constructor <init>(Ln3/i/b/h/d;Ln3/i/b/h/c$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ln3/i/b/h/c;->g:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ln3/i/b/h/c;->h:I

    .line 5
    iput-object p1, p0, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 6
    iput-object p2, p0, Ln3/i/b/h/c;->e:Ln3/i/b/h/c$a;

    return-void
.end method


# virtual methods
.method public a(Ln3/i/b/h/c;I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    move-result p1

    return p1
.end method

.method public b(Ln3/i/b/h/c;IIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ln3/i/b/h/c;->k()V

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p4, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ln3/i/b/h/c;->j(Ln3/i/b/h/c;)Z

    move-result p4

    if-nez p4, :cond_1

    return v1

    .line 3
    :cond_1
    iput-object p1, p0, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    .line 4
    iget-object p4, p1, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-nez p4, :cond_2

    .line 5
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    .line 6
    :cond_2
    iget-object p1, p0, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    iget-object p1, p1, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez p2, :cond_4

    .line 8
    iput p2, p0, Ln3/i/b/h/c;->g:I

    goto :goto_0

    .line 9
    :cond_4
    iput v1, p0, Ln3/i/b/h/c;->g:I

    .line 10
    :goto_0
    iput p3, p0, Ln3/i/b/h/c;->h:I

    return v0
.end method

.method public c(ILjava/util/ArrayList;Ln3/i/b/h/m/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ln3/i/b/h/m/n;",
            ">;",
            "Ln3/i/b/h/m/n;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/c;

    .line 3
    iget-object v1, v1, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    invoke-static {v1, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/i/b/h/c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ln3/i/b/h/c;->b:I

    return v0
.end method

.method public e()I
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 2
    iget v0, v0, Ln3/i/b/h/d;->j0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Ln3/i/b/h/c;->h:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v2, p0, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v2, :cond_1

    iget-object v2, v2, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 4
    iget v2, v2, Ln3/i/b/h/d;->j0:I

    if-ne v2, v1, :cond_1

    return v0

    .line 5
    :cond_1
    iget v0, p0, Ln3/i/b/h/c;->g:I

    return v0
.end method

.method public final f()Ln3/i/b/h/c;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/b/h/c;->e:Ln3/i/b/h/c$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Ln3/i/b/h/c;->e:Ln3/i/b/h/c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    return-object v0

    .line 4
    :pswitch_1
    iget-object v0, p0, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    return-object v0

    .line 5
    :pswitch_2
    iget-object v0, p0, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    return-object v0

    .line 6
    :pswitch_3
    iget-object v0, p0, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/b/h/c;

    .line 3
    invoke-virtual {v2}, Ln3/i/b/h/c;->f()Ln3/i/b/h/c;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ln3/i/b/h/c;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Ln3/i/b/h/c;)Z
    .locals 7

    .line 1
    sget-object v0, Ln3/i/b/h/c$a;->i:Ln3/i/b/h/c$a;

    sget-object v1, Ln3/i/b/h/c$a;->h:Ln3/i/b/h/c$a;

    sget-object v2, Ln3/i/b/h/c$a;->f:Ln3/i/b/h/c$a;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v4, p1, Ln3/i/b/h/c;->e:Ln3/i/b/h/c$a;

    .line 3
    iget-object v5, p0, Ln3/i/b/h/c;->e:Ln3/i/b/h/c$a;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    if-ne v5, v2, :cond_2

    .line 4
    iget-object p1, p1, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 5
    iget-boolean p1, p1, Ln3/i/b/h/d;->A:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 7
    iget-boolean p1, p1, Ln3/i/b/h/d;->A:Z

    if-nez p1, :cond_2

    :cond_1
    return v3

    :cond_2
    return v6

    .line 8
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 9
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Ln3/i/b/h/c;->e:Ln3/i/b/h/c$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v3

    .line 10
    :pswitch_1
    sget-object v1, Ln3/i/b/h/c$a;->c:Ln3/i/b/h/c$a;

    if-eq v4, v1, :cond_5

    sget-object v1, Ln3/i/b/h/c$a;->e:Ln3/i/b/h/c$a;

    if-ne v4, v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v6

    .line 11
    :goto_1
    iget-object p1, p1, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 12
    instance-of p1, p1, Ln3/i/b/h/g;

    if-eqz p1, :cond_8

    if-nez v1, :cond_6

    if-ne v4, v0, :cond_7

    :cond_6
    move v3, v6

    :cond_7
    move v1, v3

    :cond_8
    return v1

    .line 13
    :pswitch_2
    sget-object v0, Ln3/i/b/h/c$a;->b:Ln3/i/b/h/c$a;

    if-eq v4, v0, :cond_a

    sget-object v0, Ln3/i/b/h/c$a;->d:Ln3/i/b/h/c$a;

    if-ne v4, v0, :cond_9

    goto :goto_2

    :cond_9
    move v0, v3

    goto :goto_3

    :cond_a
    :goto_2
    move v0, v6

    .line 14
    :goto_3
    iget-object p1, p1, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 15
    instance-of p1, p1, Ln3/i/b/h/g;

    if-eqz p1, :cond_d

    if-nez v0, :cond_b

    if-ne v4, v1, :cond_c

    :cond_b
    move v3, v6

    :cond_c
    move v0, v3

    :cond_d
    return v0

    :pswitch_3
    if-eq v4, v2, :cond_e

    if-eq v4, v1, :cond_e

    if-eq v4, v0, :cond_e

    move v3, v6

    :cond_e
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    iget-object v0, v0, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    iput-object v1, v0, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    .line 5
    :cond_0
    iput-object v1, p0, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    .line 6
    iput-object v1, p0, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ln3/i/b/h/c;->g:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Ln3/i/b/h/c;->h:I

    .line 9
    iput-boolean v0, p0, Ln3/i/b/h/c;->c:Z

    .line 10
    iput v0, p0, Ln3/i/b/h/c;->b:I

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/i/b/g;

    sget-object v1, Ln3/i/b/g$a;->a:Ln3/i/b/g$a;

    invoke-direct {v0, v1}, Ln3/i/b/g;-><init>(Ln3/i/b/g$a;)V

    iput-object v0, p0, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ln3/i/b/g;->c()V

    :goto_0
    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/i/b/h/c;->b:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/i/b/h/c;->c:Z

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/i/b/h/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Ln3/i/b/h/c;->h:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 2
    iget-object v1, v1, Ln3/i/b/h/d;->k0:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln3/i/b/h/c;->e:Ln3/i/b/h/c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
