.class public final Le/a/y/c/x/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/k/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/c/x/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Le/a/y/c/x/a/b;

.field public b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/y/c/x/a/b;Le/a/y/a/k/b;Le/a/y/c/x/a/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/c/x/a/b$c;->a:Le/a/y/c/x/a/b;

    .line 3
    new-instance p1, Le/a/y/a/k/d;

    invoke-direct {p1, p2}, Le/a/y/a/k/d;-><init>(Le/a/y/a/k/b;)V

    .line 4
    sget-object p3, Lo3/c/b;->c:Ljava/lang/Object;

    .line 5
    instance-of p3, p1, Lo3/c/b;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p3, Lo3/c/b;

    invoke-direct {p3, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p3

    .line 7
    :goto_0
    iput-object p1, p0, Le/a/y/c/x/a/b$c;->b:Ljavax/inject/Provider;

    .line 8
    new-instance p3, Le/a/y/a/k/c;

    invoke-direct {p3, p2, p1}, Le/a/y/a/k/c;-><init>(Le/a/y/a/k/b;Ljavax/inject/Provider;)V

    .line 9
    instance-of p1, p3, Lo3/c/b;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Lo3/c/b;

    invoke-direct {p1, p3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p3, p1

    .line 11
    :goto_1
    iput-object p3, p0, Le/a/y/c/x/a/b$c;->c:Ljavax/inject/Provider;

    return-void
.end method
