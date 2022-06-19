.class public Le/k/a/c/d0/z/m0;
.super Le/k/a/c/d0/z/b0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/s;
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/z/m0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/b0<",
        "Ljava/lang/Object;",
        ">;",
        "Le/k/a/c/d0/s;",
        "Le/k/a/c/d0/i;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final k:[Ljava/lang/Object;


# instance fields
.field public d:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public g:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:Le/k/a/c/i;

.field public i:Le/k/a/c/i;

.field public final j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Le/k/a/c/d0/z/m0;->k:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/k/a/c/d0/z/m0;->h:Le/k/a/c/i;

    .line 3
    iput-object v0, p0, Le/k/a/c/d0/z/m0;->i:Le/k/a/c/i;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Le/k/a/c/d0/z/m0;->j:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/z/m0;Z)V
    .locals 1

    .line 9
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    .line 10
    iget-object v0, p1, Le/k/a/c/d0/z/m0;->d:Le/k/a/c/j;

    iput-object v0, p0, Le/k/a/c/d0/z/m0;->d:Le/k/a/c/j;

    .line 11
    iget-object v0, p1, Le/k/a/c/d0/z/m0;->e:Le/k/a/c/j;

    iput-object v0, p0, Le/k/a/c/d0/z/m0;->e:Le/k/a/c/j;

    .line 12
    iget-object v0, p1, Le/k/a/c/d0/z/m0;->f:Le/k/a/c/j;

    iput-object v0, p0, Le/k/a/c/d0/z/m0;->f:Le/k/a/c/j;

    .line 13
    iget-object v0, p1, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    iput-object v0, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    .line 14
    iget-object v0, p1, Le/k/a/c/d0/z/m0;->h:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/d0/z/m0;->h:Le/k/a/c/i;

    .line 15
    iget-object p1, p1, Le/k/a/c/d0/z/m0;->i:Le/k/a/c/i;

    iput-object p1, p0, Le/k/a/c/d0/z/m0;->i:Le/k/a/c/i;

    .line 16
    iput-boolean p2, p0, Le/k/a/c/d0/z/m0;->j:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/i;)V
    .locals 1

    .line 5
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    .line 6
    iput-object p1, p0, Le/k/a/c/d0/z/m0;->h:Le/k/a/c/i;

    .line 7
    iput-object p2, p0, Le/k/a/c/d0/z/m0;->i:Le/k/a/c/i;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Le/k/a/c/d0/z/m0;->j:Z

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    iget-object p1, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    iget-object v2, p1, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    invoke-virtual {v2, v1}, Le/k/a/c/c0/g;->a(Ljava/lang/Class;)Le/k/a/c/c0/f;

    .line 5
    iget-object p1, p1, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object p2, p0, Le/k/a/c/d0/z/m0;->f:Le/k/a/c/j;

    if-nez p2, :cond_2

    iget-object p2, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    if-nez p2, :cond_2

    iget-object p2, p0, Le/k/a/c/d0/z/m0;->d:Le/k/a/c/j;

    if-nez p2, :cond_2

    iget-object p2, p0, Le/k/a/c/d0/z/m0;->e:Le/k/a/c/j;

    if-nez p2, :cond_2

    .line 9
    const-class p2, Le/k/a/c/d0/z/m0;

    const-class v1, Le/k/a/c/d0/z/m0;

    if-ne p2, v1, :cond_2

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Le/k/a/c/d0/z/m0$a;

    invoke-direct {p1, v0}, Le/k/a/c/d0/z/m0$a;-><init>(Z)V

    goto :goto_1

    .line 11
    :cond_1
    sget-object p1, Le/k/a/c/d0/z/m0$a;->e:Le/k/a/c/d0/z/m0$a;

    :goto_1
    return-object p1

    .line 12
    :cond_2
    iget-boolean p2, p0, Le/k/a/c/d0/z/m0;->j:Z

    if-eq p1, p2, :cond_3

    .line 13
    new-instance p2, Le/k/a/c/d0/z/m0;

    invoke-direct {p2, p0, p1}, Le/k/a/c/d0/z/m0;-><init>(Le/k/a/c/d0/z/m0;Z)V

    return-object p2

    :cond_3
    return-object p0
.end method

.method public b(Le/k/a/c/g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Le/k/a/c/g;->i()Le/k/a/c/m0/o;

    move-result-object v2

    .line 4
    iget-object v3, p0, Le/k/a/c/d0/z/m0;->h:Le/k/a/c/i;

    if-nez v3, :cond_0

    .line 5
    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v3, v0}, Le/k/a/c/m0/o;->g(Ljava/lang/Class;Le/k/a/c/i;)Le/k/a/c/m0/e;

    move-result-object v3

    .line 6
    iget-object v4, p1, Le/k/a/c/g;->a:Le/k/a/c/d0/n;

    iget-object v5, p1, Le/k/a/c/g;->b:Le/k/a/c/d0/o;

    invoke-virtual {v4, p1, v5, v3}, Le/k/a/c/d0/n;->f(Le/k/a/c/g;Le/k/a/c/d0/o;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v3}, Le/k/a/c/d0/z/m0;->m0(Le/k/a/c/j;)Le/k/a/c/j;

    move-result-object v3

    iput-object v3, p0, Le/k/a/c/d0/z/m0;->e:Le/k/a/c/j;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, v3}, Le/k/a/c/d0/z/m0;->n0(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v3

    iput-object v3, p0, Le/k/a/c/d0/z/m0;->e:Le/k/a/c/j;

    .line 9
    :goto_0
    iget-object v3, p0, Le/k/a/c/d0/z/m0;->i:Le/k/a/c/i;

    if-nez v3, :cond_1

    .line 10
    const-class v3, Ljava/util/Map;

    invoke-virtual {v2, v3, v1, v0}, Le/k/a/c/m0/o;->j(Ljava/lang/Class;Le/k/a/c/i;Le/k/a/c/i;)Le/k/a/c/m0/h;

    move-result-object v0

    .line 11
    iget-object v3, p1, Le/k/a/c/g;->a:Le/k/a/c/d0/n;

    iget-object v4, p1, Le/k/a/c/g;->b:Le/k/a/c/d0/o;

    invoke-virtual {v3, p1, v4, v0}, Le/k/a/c/d0/n;->f(Le/k/a/c/g;Le/k/a/c/d0/o;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Le/k/a/c/d0/z/m0;->m0(Le/k/a/c/j;)Le/k/a/c/j;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/d0/z/m0;->d:Le/k/a/c/j;

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0, p1, v3}, Le/k/a/c/d0/z/m0;->n0(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/d0/z/m0;->d:Le/k/a/c/j;

    .line 14
    :goto_1
    invoke-virtual {p0, p1, v1}, Le/k/a/c/d0/z/m0;->n0(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/k/a/c/d0/z/m0;->m0(Le/k/a/c/j;)Le/k/a/c/j;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/d0/z/m0;->f:Le/k/a/c/j;

    .line 15
    const-class v0, Ljava/lang/Number;

    .line 16
    sget-object v1, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v0

    .line 17
    invoke-virtual {p0, p1, v0}, Le/k/a/c/d0/z/m0;->n0(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/k/a/c/d0/z/m0;->m0(Le/k/a/c/j;)Le/k/a/c/j;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    .line 18
    invoke-static {}, Le/k/a/c/m0/o;->p()Le/k/a/c/i;

    move-result-object v0

    .line 19
    iget-object v1, p0, Le/k/a/c/d0/z/m0;->d:Le/k/a/c/j;

    invoke-virtual {p1, v1, v3, v0}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v1

    iput-object v1, p0, Le/k/a/c/d0/z/m0;->d:Le/k/a/c/j;

    .line 20
    iget-object v1, p0, Le/k/a/c/d0/z/m0;->e:Le/k/a/c/j;

    invoke-virtual {p1, v1, v3, v0}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v1

    iput-object v1, p0, Le/k/a/c/d0/z/m0;->e:Le/k/a/c/j;

    .line 21
    iget-object v1, p0, Le/k/a/c/d0/z/m0;->f:Le/k/a/c/j;

    invoke-virtual {p1, v1, v3, v0}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v1

    iput-object v1, p0, Le/k/a/c/d0/z/m0;->f:Le/k/a/c/j;

    .line 22
    iget-object v1, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    invoke-virtual {p1, v1, v3, v0}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    return-void
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    return-object v1

    .line 4
    :pswitch_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 5
    :pswitch_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :pswitch_5
    iget-object v0, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    sget-object v0, Le/k/a/c/h;->c:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Le/k/a/b/j;->k0()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_6
    iget-object v0, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    sget v0, Le/k/a/c/d0/z/b0;->c:I

    invoke-virtual {p2, v0}, Le/k/a/c/g;->O(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->y(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_7
    iget-object v0, p0, Le/k/a/c/d0/z/m0;->f:Le/k/a/c/j;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_8
    sget-object v0, Le/k/a/c/h;->f:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->r0(Le/k/a/b/j;Le/k/a/c/g;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :cond_5
    iget-object v0, p0, Le/k/a/c/d0/z/m0;->e:Le/k/a/c/j;

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :cond_6
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->q0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_9
    iget-object v0, p0, Le/k/a/c/d0/z/m0;->d:Le/k/a/c/j;

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :cond_7
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->s0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :goto_0
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/d0/z/m0;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x0

    return-object p1

    .line 6
    :pswitch_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :pswitch_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :pswitch_5
    iget-object v0, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    sget-object p3, Le/k/a/c/h;->c:Le/k/a/c/h;

    invoke-virtual {p2, p3}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Le/k/a/b/j;->k0()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_6
    iget-object v0, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    sget p3, Le/k/a/c/d0/z/b0;->c:I

    invoke-virtual {p2, p3}, Le/k/a/c/g;->O(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 16
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->y(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_7
    iget-object v0, p0, Le/k/a/c/d0/z/m0;->f:Le/k/a/c/j;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :cond_5
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_8
    iget-object v0, p0, Le/k/a/c/d0/z/m0;->e:Le/k/a/c/j;

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :cond_6
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_8

    .line 24
    check-cast p3, Ljava/util/Collection;

    .line 25
    :goto_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v0, v1, :cond_7

    .line 26
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-object p3

    .line 27
    :cond_8
    sget-object p3, Le/k/a/c/h;->f:Le/k/a/c/h;

    invoke-virtual {p2, p3}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 28
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->r0(Le/k/a/b/j;Le/k/a/c/g;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_9
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->q0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_9
    iget-object v0, p0, Le/k/a/c/d0/z/m0;->d:Le/k/a/c/j;

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :cond_a
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_10

    .line 33
    check-cast p3, Ljava/util/Map;

    .line 34
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 35
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v0, v1, :cond_b

    .line 36
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    .line 37
    :cond_b
    sget-object v1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v0, v1, :cond_c

    goto :goto_2

    .line 38
    :cond_c
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_d
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 40
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 41
    invoke-virtual {p0, p1, p2, v1}, Le/k/a/c/d0/z/m0;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 42
    :cond_e
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-eq v2, v1, :cond_f

    .line 43
    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_f
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    :goto_2
    return-object p3

    .line 45
    :cond_10
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->s0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    const-class p3, Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    return-object v1

    .line 4
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 5
    :pswitch_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p3, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    sget-object p3, Le/k/a/c/h;->c:Le/k/a/c/h;

    invoke-virtual {p2, p3}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Le/k/a/b/j;->k0()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_5
    iget-object p3, p0, Le/k/a/c/d0/z/m0;->g:Le/k/a/c/j;

    if-eqz p3, :cond_2

    .line 12
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    sget p3, Le/k/a/c/d0/z/b0;->c:I

    invoke-virtual {p2, p3}, Le/k/a/c/g;->O(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 14
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->y(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_6
    iget-object p3, p0, Le/k/a/c/d0/z/m0;->f:Le/k/a/c/j;

    if-eqz p3, :cond_4

    .line 17
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_5
    :pswitch_7
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->b(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m0(Le/k/a/c/j;)Le/k/a/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;)",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le/k/a/c/n0/g;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n0(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/g;->a:Le/k/a/c/d0/n;

    iget-object v1, p1, Le/k/a/c/g;->b:Le/k/a/c/d0/o;

    invoke-virtual {v0, p1, v1, p2}, Le/k/a/c/d0/n;->f(Le/k/a/c/g;Le/k/a/c/d0/o;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object p1

    return-object p1
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->e:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/q;->c:Le/k/a/b/q;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->Q(Le/k/a/b/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p3, p4, p5, p6}, Le/k/a/c/d0/z/m0;->p0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz p7, :cond_2

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p5

    .line 5
    invoke-interface {p3, p7, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    if-eqz p6, :cond_1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p3, p4, p6, p5}, Le/k/a/c/d0/z/m0;->p0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final p0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p3

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public q0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->m:Le/k/a/b/m;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v4

    if-ne v4, v1, :cond_2

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 12
    :cond_2
    invoke-virtual {p2}, Le/k/a/c/g;->U()Le/k/a/c/n0/u;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Le/k/a/c/n0/u;->g()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    .line 14
    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 15
    aput-object v3, v4, v0

    move v3, v2

    .line 16
    :goto_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v2, v0

    .line 17
    array-length v7, v4

    if-lt v3, v7, :cond_3

    .line 18
    invoke-virtual {v1, v4}, Le/k/a/c/n0/u;->c([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    move v3, v5

    :cond_3
    add-int/lit8 v7, v3, 0x1

    .line 19
    aput-object v6, v4, v3

    .line 20
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v3

    sget-object v6, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v3, v6, :cond_4

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-virtual {v1, v4, v7, p1}, Le/k/a/c/n0/u;->d([Ljava/lang/Object;ILjava/util/List;)V

    return-object p1

    :cond_4
    move v3, v7

    goto :goto_0
.end method

.method public r0(Le/k/a/b/j;Le/k/a/c/g;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p1, Le/k/a/c/d0/z/m0;->k:[Ljava/lang/Object;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Le/k/a/c/g;->U()Le/k/a/c/n0/u;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Le/k/a/c/n0/u;->g()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    array-length v5, v1

    if-lt v3, v5, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Le/k/a/c/n0/u;->c([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move v3, v2

    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 8
    aput-object v4, v1, v3

    .line 9
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v3

    sget-object v4, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v3, v4, :cond_2

    .line 10
    iget p1, v0, Le/k/a/c/n0/u;->c:I

    add-int/2addr p1, v5

    .line 11
    new-array p2, p1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, p2, p1, v1, v5}, Le/k/a/c/n0/u;->a(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 13
    invoke-virtual {v0}, Le/k/a/c/n0/u;->b()V

    return-object p2

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method public s0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v7, v2

    goto :goto_1

    .line 4
    :cond_0
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v0, v1, :cond_9

    goto :goto_0

    :goto_1
    const/4 v0, 0x2

    if-nez v7, :cond_2

    .line 7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v1

    .line 8
    :cond_2
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 9
    invoke-virtual/range {p0 .. p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v8

    .line 10
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    invoke-virtual {v1, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 13
    :cond_3
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 14
    invoke-virtual/range {p0 .. p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v9

    .line 15
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 17
    invoke-virtual {v0, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v0, v1, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v0

    .line 19
    invoke-virtual/range {v3 .. v10}, Le/k/a/c/d0/z/m0;->o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    return-object v0

    .line 20
    :cond_5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    invoke-virtual {v0, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v0, v1, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v0

    .line 23
    invoke-virtual/range {v3 .. v10}, Le/k/a/c/d0/z/m0;->o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    :cond_6
    move-object v15, v10

    .line 24
    :cond_7
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 25
    invoke-virtual/range {p0 .. p2}, Le/k/a/c/d0/z/m0;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v15, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 27
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v0

    move-object/from16 v17, v1

    .line 28
    invoke-virtual/range {v11 .. v18}, Le/k/a/c/d0/z/m0;->o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 29
    :cond_8
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_7

    return-object v0

    :cond_9
    move-object/from16 v1, p0

    .line 30
    iget-object v0, v1, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 31
    invoke-virtual {v4, v0, v3}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2
.end method
