.class public final Le/a/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/u1$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/u1;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/e/r/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/u1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/u1;->b:Le/a/u1;

    .line 3
    iput-object p1, p0, Le/a/u1;->a:Landroid/content/Context;

    .line 4
    new-instance p1, Le/a/u1$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/u1$b;-><init>(Le/a/u1;I)V

    .line 5
    sget-object p2, Lo3/c/b;->c:Ljava/lang/Object;

    .line 6
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 8
    :goto_0
    iput-object p1, p0, Le/a/u1;->c:Ljavax/inject/Provider;

    return-void
.end method
