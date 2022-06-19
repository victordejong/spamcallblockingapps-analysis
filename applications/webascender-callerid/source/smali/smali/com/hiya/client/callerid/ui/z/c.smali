.class public final Lcom/hiya/client/callerid/ui/z/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/client/callerid/ui/z/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/z/c$c;,
        Lcom/hiya/client/callerid/ui/z/c$b;
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/client/callerid/ui/z/l;

.field private final c:Lcom/hiya/client/callerid/ui/z/i;

.field private final d:Lcom/hiya/client/callerid/ui/z/f;

.field private e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/y/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/a0/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/x/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Li/c/b0/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/x/a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/hiya/client/callerid/ui/z/l;Lcom/hiya/client/callerid/ui/z/f;Lcom/hiya/client/callerid/ui/z/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/c;->b:Lcom/hiya/client/callerid/ui/z/l;

    .line 4
    iput-object p3, p0, Lcom/hiya/client/callerid/ui/z/c;->c:Lcom/hiya/client/callerid/ui/z/i;

    .line 5
    iput-object p2, p0, Lcom/hiya/client/callerid/ui/z/c;->d:Lcom/hiya/client/callerid/ui/z/f;

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/client/callerid/ui/z/c;->o(Lcom/hiya/client/callerid/ui/z/l;Lcom/hiya/client/callerid/ui/z/f;Lcom/hiya/client/callerid/ui/z/i;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/client/callerid/ui/z/l;Lcom/hiya/client/callerid/ui/z/f;Lcom/hiya/client/callerid/ui/z/i;Lcom/hiya/client/callerid/ui/z/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/client/callerid/ui/z/c;-><init>(Lcom/hiya/client/callerid/ui/z/l;Lcom/hiya/client/callerid/ui/z/f;Lcom/hiya/client/callerid/ui/z/i;)V

    return-void
.end method

.method public static f()Lcom/hiya/client/callerid/ui/z/c$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/z/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/z/c$b;-><init>(Lcom/hiya/client/callerid/ui/z/c$a;)V

    return-object v0
.end method

.method private g()Lcom/hiya/client/callerid/ui/a0/c;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/c;->b:Lcom/hiya/client/callerid/ui/z/l;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/z/n;->c(Lcom/hiya/client/callerid/ui/z/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/z/c;->c:Lcom/hiya/client/callerid/ui/z/i;

    invoke-interface {v2}, Lcom/hiya/client/callerid/ui/z/i;->a()Lg/g/b/a/b;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    invoke-static {v2, v3}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lg/g/b/a/b;

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->m()Lcom/hiya/client/callerid/ui/a0/k;

    move-result-object v3

    iget-object v4, p0, Lcom/hiya/client/callerid/ui/z/c;->n:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/client/callerid/ui/x/a;

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->h()Lcom/hiya/client/callerid/ui/a0/d;

    move-result-object v5

    iget-object v6, p0, Lcom/hiya/client/callerid/ui/z/c;->g:Lj/a/a;

    invoke-static {v6}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v6

    iget-object v7, p0, Lcom/hiya/client/callerid/ui/z/c;->o:Lj/a/a;

    invoke-static {v7}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/hiya/client/callerid/ui/z/m;->a(Lcom/hiya/client/callerid/ui/z/l;Landroid/content/Context;Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/k;Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/a0/d;Lh/a;Lh/a;)Lcom/hiya/client/callerid/ui/a0/c;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/hiya/client/callerid/ui/a0/d;
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/d;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/z/c;->c:Lcom/hiya/client/callerid/ui/z/i;

    invoke-interface {v1}, Lcom/hiya/client/callerid/ui/z/i;->a()Lg/g/b/a/b;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    invoke-static {v1, v2}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lg/g/b/a/b;

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->l()Lcom/hiya/client/callerid/ui/y/d;

    move-result-object v2

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->i()Lcom/hiya/client/callerid/ui/overlay/g/e;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/client/callerid/ui/a0/d;-><init>(Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/y/d;Lcom/hiya/client/callerid/ui/overlay/g/e;)V

    return-object v0
.end method

.method private i()Lcom/hiya/client/callerid/ui/overlay/g/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/overlay/g/e;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/z/c;->b:Lcom/hiya/client/callerid/ui/z/l;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/z/n;->c(Lcom/hiya/client/callerid/ui/z/l;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/overlay/g/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private j()Lcom/hiya/client/callerid/ui/incallui/b;
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/incallui/b;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/z/c;->b:Lcom/hiya/client/callerid/ui/z/l;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/z/n;->c(Lcom/hiya/client/callerid/ui/z/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/z/c;->c:Lcom/hiya/client/callerid/ui/z/i;

    invoke-interface {v2}, Lcom/hiya/client/callerid/ui/z/i;->a()Lg/g/b/a/b;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    invoke-static {v2, v3}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lg/g/b/a/b;

    invoke-direct {v0, v1, v2}, Lcom/hiya/client/callerid/ui/incallui/b;-><init>(Landroid/content/Context;Lg/g/b/a/b;)V

    return-object v0
.end method

.method private k()Lcom/hiya/client/callerid/ui/incallui/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/incallui/d;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/z/c;->b:Lcom/hiya/client/callerid/ui/z/l;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/z/n;->c(Lcom/hiya/client/callerid/ui/z/l;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private l()Lcom/hiya/client/callerid/ui/y/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/y/d;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/z/c;->b:Lcom/hiya/client/callerid/ui/z/l;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/z/n;->c(Lcom/hiya/client/callerid/ui/z/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/z/c;->g:Lj/a/a;

    invoke-static {v2}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hiya/client/callerid/ui/y/d;-><init>(Landroid/content/Context;Lh/a;)V

    return-object v0
.end method

.method private m()Lcom/hiya/client/callerid/ui/a0/k;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/k;

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/a0/k;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method private n()Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/c;->d:Lcom/hiya/client/callerid/ui/z/f;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/z/c;->b:Lcom/hiya/client/callerid/ui/z/l;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/z/n;->c(Lcom/hiya/client/callerid/ui/z/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/z/h;->c(Lcom/hiya/client/callerid/ui/z/f;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private o(Lcom/hiya/client/callerid/ui/z/l;Lcom/hiya/client/callerid/ui/z/f;Lcom/hiya/client/callerid/ui/z/i;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/z/n;->a(Lcom/hiya/client/callerid/ui/z/l;)Lcom/hiya/client/callerid/ui/z/n;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/z/c;->e:Lj/a/a;

    .line 2
    new-instance v1, Lcom/hiya/client/callerid/ui/z/c$c;

    invoke-direct {v1, p3}, Lcom/hiya/client/callerid/ui/z/c$c;-><init>(Lcom/hiya/client/callerid/ui/z/i;)V

    iput-object v1, p0, Lcom/hiya/client/callerid/ui/z/c;->f:Lj/a/a;

    .line 3
    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/z/o;->a(Lcom/hiya/client/callerid/ui/z/l;Lj/a/a;)Lcom/hiya/client/callerid/ui/z/o;

    move-result-object p3

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/z/c;->g:Lj/a/a;

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/c;->e:Lj/a/a;

    invoke-static {v0, p3}, Lcom/hiya/client/callerid/ui/y/c;->a(Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/ui/y/c;

    move-result-object p3

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/z/c;->h:Lj/a/a;

    .line 5
    invoke-static {p3}, Lcom/hiya/client/callerid/ui/a0/b;->a(Lj/a/a;)Lcom/hiya/client/callerid/ui/a0/b;

    move-result-object p3

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/z/c;->i:Lj/a/a;

    .line 6
    iget-object p3, p0, Lcom/hiya/client/callerid/ui/z/c;->e:Lj/a/a;

    invoke-static {p2, p3}, Lcom/hiya/client/callerid/ui/z/h;->a(Lcom/hiya/client/callerid/ui/z/f;Lj/a/a;)Lcom/hiya/client/callerid/ui/z/h;

    move-result-object p3

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/z/c;->j:Lj/a/a;

    .line 7
    invoke-static {p2}, Lcom/hiya/client/callerid/ui/z/g;->a(Lcom/hiya/client/callerid/ui/z/f;)Lcom/hiya/client/callerid/ui/z/g;

    move-result-object p2

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/z/c;->k:Lj/a/a;

    .line 8
    iget-object p3, p0, Lcom/hiya/client/callerid/ui/z/c;->j:Lj/a/a;

    invoke-static {p3, p2}, Lcom/hiya/client/callerid/ui/x/f;->a(Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/ui/x/f;

    move-result-object p2

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/z/c;->l:Lj/a/a;

    .line 9
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/z/t;->a(Lcom/hiya/client/callerid/ui/z/l;)Lcom/hiya/client/callerid/ui/z/t;

    move-result-object p2

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/z/c;->m:Lj/a/a;

    .line 10
    iget-object p3, p0, Lcom/hiya/client/callerid/ui/z/c;->e:Lj/a/a;

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/c;->f:Lj/a/a;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/z/c;->i:Lj/a/a;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/z/c;->l:Lj/a/a;

    invoke-static {p3, v0, v1, v2, p2}, Lcom/hiya/client/callerid/ui/x/c;->a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/ui/x/c;

    move-result-object p2

    invoke-static {p2}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p2

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/z/c;->n:Lj/a/a;

    .line 11
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/z/c;->e:Lj/a/a;

    invoke-static {p1, p2}, Lcom/hiya/client/callerid/ui/z/s;->a(Lcom/hiya/client/callerid/ui/z/l;Lj/a/a;)Lcom/hiya/client/callerid/ui/z/s;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/c;->o:Lj/a/a;

    return-void
.end method

.method private p(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->j()Lcom/hiya/client/callerid/ui/incallui/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/f;->a(Lcom/hiya/client/callerid/ui/incallui/e;Lcom/hiya/client/callerid/ui/incallui/b;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->k()Lcom/hiya/client/callerid/ui/incallui/d;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/f;->b(Lcom/hiya/client/callerid/ui/incallui/e;Lcom/hiya/client/callerid/ui/incallui/d;)V

    return-object p1
.end method

.method private q(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;)Lcom/hiya/client/callerid/ui/incallui/InCallActivity;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->g()Lcom/hiya/client/callerid/ui/a0/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/g;->a(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;Lcom/hiya/client/callerid/ui/a0/c;)V

    return-object p1
.end method

.method private r(Lcom/hiya/client/callerid/ui/incallui/h;)Lcom/hiya/client/callerid/ui/incallui/h;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->j()Lcom/hiya/client/callerid/ui/incallui/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/i;->a(Lcom/hiya/client/callerid/ui/incallui/h;Lcom/hiya/client/callerid/ui/incallui/b;)V

    return-object p1
.end method

.method private s(Lcom/hiya/client/callerid/ui/incallui/j;)Lcom/hiya/client/callerid/ui/incallui/j;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->j()Lcom/hiya/client/callerid/ui/incallui/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/k;->a(Lcom/hiya/client/callerid/ui/incallui/j;Lcom/hiya/client/callerid/ui/incallui/b;)V

    return-object p1
.end method

.method private t(Lcom/hiya/client/callerid/ui/incallui/l;)Lcom/hiya/client/callerid/ui/incallui/l;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->g()Lcom/hiya/client/callerid/ui/a0/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/m;->a(Lcom/hiya/client/callerid/ui/incallui/l;Lcom/hiya/client/callerid/ui/a0/c;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c;->h()Lcom/hiya/client/callerid/ui/a0/d;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/m;->b(Lcom/hiya/client/callerid/ui/incallui/l;Lcom/hiya/client/callerid/ui/a0/d;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/c;->c:Lcom/hiya/client/callerid/ui/z/i;

    invoke-interface {v0}, Lcom/hiya/client/callerid/ui/z/i;->a()Lg/g/b/a/b;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lg/g/b/a/b;

    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/m;->c(Lcom/hiya/client/callerid/ui/incallui/l;Lg/g/b/a/b;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/c;->g:Lj/a/a;

    invoke-static {v0}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/m;->d(Lcom/hiya/client/callerid/ui/incallui/l;Lh/a;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/c;->o:Lj/a/a;

    invoke-static {v0}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/m;->e(Lcom/hiya/client/callerid/ui/incallui/l;Lh/a;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/z/c;->q(Lcom/hiya/client/callerid/ui/incallui/InCallActivity;)Lcom/hiya/client/callerid/ui/incallui/InCallActivity;

    return-void
.end method

.method public b(Lcom/hiya/client/callerid/ui/incallui/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/z/c;->p(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/e;

    return-void
.end method

.method public c(Lcom/hiya/client/callerid/ui/incallui/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/z/c;->t(Lcom/hiya/client/callerid/ui/incallui/l;)Lcom/hiya/client/callerid/ui/incallui/l;

    return-void
.end method

.method public d(Lcom/hiya/client/callerid/ui/incallui/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/z/c;->s(Lcom/hiya/client/callerid/ui/incallui/j;)Lcom/hiya/client/callerid/ui/incallui/j;

    return-void
.end method

.method public e(Lcom/hiya/client/callerid/ui/incallui/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/z/c;->r(Lcom/hiya/client/callerid/ui/incallui/h;)Lcom/hiya/client/callerid/ui/incallui/h;

    return-void
.end method
