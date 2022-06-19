.class public final Le/m/a/h/a/c/q;
.super Le/m/a/h/a/d/d;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/h/a/d/g;

.field public final b:Le/m/a/h/a/h/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/h/n<",
            "Le/m/a/h/a/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Le/m/a/h/a/c/r;


# direct methods
.method public constructor <init>(Le/m/a/h/a/c/r;Le/m/a/h/a/h/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/h/n<",
            "Le/m/a/h/a/c/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/m/a/h/a/c/q;->c:Le/m/a/h/a/c/r;

    .line 1
    invoke-direct {p0}, Le/m/a/h/a/d/d;-><init>()V

    new-instance p1, Le/m/a/h/a/d/g;

    const-string v0, "OnRequestIntegrityTokenCallback"

    .line 2
    invoke-direct {p1, v0}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le/m/a/h/a/c/q;->a:Le/m/a/h/a/d/g;

    iput-object p2, p0, Le/m/a/h/a/c/q;->b:Le/m/a/h/a/h/n;

    return-void
.end method
