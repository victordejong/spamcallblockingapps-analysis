.class public final Le/a/t1$q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t1$q$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/t1;

.field public final b:Le/a/t1$q;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/s0/n;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/s0/k;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/p5/h0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/s0/e;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/s0/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/t1$q;->b:Le/a/t1$q;

    .line 3
    iput-object p1, p0, Le/a/t1$q;->a:Le/a/t1;

    .line 4
    new-instance p2, Le/a/t1$q$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$q$a;-><init>(Le/a/t1;Le/a/t1$q;I)V

    iput-object p2, p0, Le/a/t1$q;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$q;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p2, Le/a/t1$q$a;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$q$a;-><init>(Le/a/t1;Le/a/t1$q;I)V

    .line 7
    instance-of v0, p2, Lo3/c/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, v0

    .line 9
    :goto_0
    iput-object p2, p0, Le/a/t1$q;->e:Ljavax/inject/Provider;

    .line 10
    new-instance p2, Le/a/t1$q$a;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$q$a;-><init>(Le/a/t1;Le/a/t1$q;I)V

    iput-object p2, p0, Le/a/t1$q;->f:Ljavax/inject/Provider;

    .line 11
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/t1$q;->g:Ljavax/inject/Provider;

    return-void
.end method
