.class public final Le/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/a/b$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/a/a/c;

.field public final c:Le/a/a/a/b;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/messaging/data/types/ImGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/a/c;Le/a/j2;Le/a/a/a/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/a/b;->c:Le/a/a/a/b;

    .line 3
    iput-object p2, p0, Le/a/a/a/b;->a:Le/a/j2;

    .line 4
    iput-object p1, p0, Le/a/a/a/b;->b:Le/a/a/a/c;

    .line 5
    new-instance p1, Le/a/a/a/b$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/a/b$b;-><init>(Le/a/a/a/b;I)V

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
    iput-object p1, p0, Le/a/a/a/b;->d:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/a/a/b$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/a/b$b;-><init>(Le/a/a/a/b;I)V

    .line 11
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 13
    :goto_1
    iput-object p1, p0, Le/a/a/a/b;->e:Ljavax/inject/Provider;

    return-void
.end method
