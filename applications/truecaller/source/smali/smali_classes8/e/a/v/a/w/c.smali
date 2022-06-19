.class public final Le/a/v/a/w/c;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/w/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/v/a/w/b;",
        ">;",
        "Le/a/v/a/w/a;"
    }
.end annotation


# instance fields
.field public final b:Le/a/l/a/q;


# direct methods
.method public constructor <init>(Le/a/l/a/q;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumContactFieldsHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/v/a/w/c;->b:Le/a/l/a/q;

    return-void
.end method
