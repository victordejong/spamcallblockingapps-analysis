.class public final Le/a/s/q/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/s/q/g/a$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/s/b;

.field public final b:Le/a/s/q/g/a;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/q/g/j;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/q/g/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/s/b;Le/a/s/q/g/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/s/q/g/a;->b:Le/a/s/q/g/a;

    .line 3
    iput-object p1, p0, Le/a/s/q/g/a;->a:Le/a/s/b;

    .line 4
    new-instance p1, Le/a/s/q/g/a$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/s/q/g/a$b;-><init>(Le/a/s/q/g/a;I)V

    iput-object p1, p0, Le/a/s/q/g/a;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/s/q/g/a;->d:Ljavax/inject/Provider;

    return-void
.end method
