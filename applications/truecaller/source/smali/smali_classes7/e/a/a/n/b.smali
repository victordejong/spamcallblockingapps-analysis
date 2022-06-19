.class public final Le/a/a/n/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/n/b$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/a/n/d;

.field public final c:Le/a/a/n/b;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/n/g;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/n/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/n/d;Le/a/j2;Le/a/a/n/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/n/b;->c:Le/a/a/n/b;

    .line 3
    iput-object p2, p0, Le/a/a/n/b;->a:Le/a/j2;

    .line 4
    iput-object p1, p0, Le/a/a/n/b;->b:Le/a/a/n/d;

    .line 5
    new-instance p1, Le/a/a/n/b$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/n/b$b;-><init>(Le/a/a/n/b;I)V

    iput-object p1, p0, Le/a/a/n/b;->d:Ljavax/inject/Provider;

    .line 6
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/n/b;->e:Ljavax/inject/Provider;

    return-void
.end method
