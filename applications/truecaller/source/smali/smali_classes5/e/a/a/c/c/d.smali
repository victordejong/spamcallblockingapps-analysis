.class public final Le/a/a/c/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/c/d$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/a/c/c/v;

.field public final b:Le/a/j2;

.field public final c:Le/a/a/c/c/d;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lq3/a/g0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/c/z;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/c/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/c/c/v;Le/a/j2;Le/a/a/c/c/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/c/c/d;->c:Le/a/a/c/c/d;

    .line 3
    iput-object p1, p0, Le/a/a/c/c/d;->a:Le/a/a/c/c/v;

    .line 4
    iput-object p2, p0, Le/a/a/c/c/d;->b:Le/a/j2;

    .line 5
    new-instance p1, Le/a/a/c/c/d$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/c/c/d$b;-><init>(Le/a/a/c/c/d;I)V

    iput-object p1, p0, Le/a/a/c/c/d;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/a/c/c/d$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/c/c/d$b;-><init>(Le/a/a/c/c/d;I)V

    iput-object p1, p0, Le/a/a/c/c/d;->e:Ljavax/inject/Provider;

    .line 7
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/c/d;->f:Ljavax/inject/Provider;

    return-void
.end method
