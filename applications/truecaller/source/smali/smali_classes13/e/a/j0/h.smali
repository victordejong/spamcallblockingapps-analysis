.class public final Le/a/j0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j0/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/j0/h$b;,
        Le/a/j0/h$c;,
        Le/a/j0/h$d;,
        Le/a/j0/h$f;,
        Le/a/j0/h$e;
    }
.end annotation


# instance fields
.field public final a:Le/a/p5/o0;

.field public final b:Le/a/b0/c;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ls1/w/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/p5/c0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/q;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/j0/f;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u/c;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/j0/n;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u/k;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/j0/o;Le/a/b0/c;Le/a/p5/o0;Le/a/q2/e;Le/a/j0/h$a;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Le/a/j0/h;->a:Le/a/p5/o0;

    .line 3
    iput-object p2, p0, Le/a/j0/h;->b:Le/a/b0/c;

    .line 4
    new-instance v1, Le/a/j0/h$e;

    invoke-direct {v1, p2}, Le/a/j0/h$e;-><init>(Le/a/b0/c;)V

    iput-object v1, p0, Le/a/j0/h;->c:Ljavax/inject/Provider;

    .line 5
    new-instance v2, Le/a/j0/h$f;

    invoke-direct {v2, p3}, Le/a/j0/h$f;-><init>(Le/a/p5/o0;)V

    iput-object v2, p0, Le/a/j0/h;->d:Ljavax/inject/Provider;

    .line 6
    new-instance v3, Le/a/j0/h$d;

    invoke-direct {v3, p2}, Le/a/j0/h$d;-><init>(Le/a/b0/c;)V

    iput-object v3, p0, Le/a/j0/h;->e:Ljavax/inject/Provider;

    .line 7
    new-instance p3, Le/a/j0/h$c;

    invoke-direct {p3, p2}, Le/a/j0/h$c;-><init>(Le/a/b0/c;)V

    iput-object p3, p0, Le/a/j0/h;->f:Ljavax/inject/Provider;

    .line 8
    new-instance p2, Le/a/j0/p;

    invoke-direct {p2, p1}, Le/a/j0/p;-><init>(Le/a/j0/o;)V

    .line 9
    iput-object p2, p0, Le/a/j0/h;->g:Ljavax/inject/Provider;

    .line 10
    new-instance v4, Le/a/u/d;

    invoke-direct {v4, v2, p3, p2}, Le/a/u/d;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 11
    iput-object v4, p0, Le/a/j0/h;->h:Ljavax/inject/Provider;

    .line 12
    new-instance v5, Le/a/j0/q;

    invoke-direct {v5, p1}, Le/a/j0/q;-><init>(Le/a/j0/o;)V

    .line 13
    iput-object v5, p0, Le/a/j0/h;->i:Ljavax/inject/Provider;

    .line 14
    new-instance v6, Le/a/j0/h$b;

    invoke-direct {v6, p4}, Le/a/j0/h$b;-><init>(Le/a/q2/e;)V

    iput-object v6, p0, Le/a/j0/h;->j:Ljavax/inject/Provider;

    .line 15
    new-instance p1, Le/a/u/l;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Le/a/u/l;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 16
    iput-object p1, p0, Le/a/j0/h;->k:Ljavax/inject/Provider;

    .line 17
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/j0/h;->l:Ljavax/inject/Provider;

    return-void
.end method
