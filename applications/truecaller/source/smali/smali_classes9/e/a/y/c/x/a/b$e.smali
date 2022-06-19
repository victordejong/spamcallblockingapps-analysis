.class public final Le/a/y/c/x/a/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/c/x/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/c/x/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Le/a/y/c/x/a/b;

.field public b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/y/c/x/a/b;Le/a/y/c/u;Le/a/y/c/x/a/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/c/x/a/b$e;->a:Le/a/y/c/x/a/b;

    .line 3
    new-instance p1, Le/a/y/c/v;

    invoke-direct {p1, p2}, Le/a/y/c/v;-><init>(Le/a/y/c/u;)V

    .line 4
    sget-object p2, Lo3/c/b;->c:Ljava/lang/Object;

    .line 5
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 7
    :goto_0
    iput-object p1, p0, Le/a/y/c/x/a/b$e;->b:Ljavax/inject/Provider;

    return-void
.end method
