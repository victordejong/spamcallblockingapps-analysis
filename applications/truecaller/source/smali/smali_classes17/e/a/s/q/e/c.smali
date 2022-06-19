.class public final Le/a/s/q/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/s/q/e/c$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/s/b;

.field public final b:Le/a/s/q/e/c;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/q/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/q/e/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/s/b;Le/a/s/q/e/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/s/q/e/c;->b:Le/a/s/q/e/c;

    .line 3
    iput-object p1, p0, Le/a/s/q/e/c;->a:Le/a/s/b;

    .line 4
    new-instance p1, Le/a/s/q/e/c$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/s/q/e/c$b;-><init>(Le/a/s/q/e/c;I)V

    iput-object p1, p0, Le/a/s/q/e/c;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/s/q/e/c;->d:Ljavax/inject/Provider;

    return-void
.end method
