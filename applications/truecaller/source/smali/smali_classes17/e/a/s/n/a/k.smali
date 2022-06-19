.class public final Le/a/s/n/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/s/n/a/k$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/s/b;

.field public final b:Le/a/s/n/a/k;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/n/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/n/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/s/b;Le/a/s/n/a/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/s/n/a/k;->b:Le/a/s/n/a/k;

    .line 3
    iput-object p1, p0, Le/a/s/n/a/k;->a:Le/a/s/b;

    .line 4
    new-instance p1, Le/a/s/n/a/k$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/s/n/a/k$b;-><init>(Le/a/s/n/a/k;I)V

    iput-object p1, p0, Le/a/s/n/a/k;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/s/n/a/k;->d:Ljavax/inject/Provider;

    return-void
.end method
