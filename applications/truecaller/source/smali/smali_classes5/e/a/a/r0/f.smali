.class public final Le/a/a/r0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/r0/f$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/a/r0/l;

.field public final b:Le/a/j2;

.field public final c:Le/a/a/r0/f;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/r0/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/r0/l;Le/a/j2;Le/a/a/r0/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/r0/f;->c:Le/a/a/r0/f;

    .line 3
    iput-object p1, p0, Le/a/a/r0/f;->a:Le/a/a/r0/l;

    .line 4
    iput-object p2, p0, Le/a/a/r0/f;->b:Le/a/j2;

    .line 5
    new-instance p1, Le/a/a/r0/f$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/r0/f$b;-><init>(Le/a/a/r0/f;I)V

    .line 6
    sget-object p2, Lo3/c/b;->c:Ljava/lang/Object;

    .line 7
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 9
    :goto_0
    iput-object p1, p0, Le/a/a/r0/f;->d:Ljavax/inject/Provider;

    return-void
.end method
