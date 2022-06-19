.class public final Le/a/v2/o$a;
.super Le/a/v2/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/v2/o<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/v2/l$a;


# direct methods
.method public constructor <init>(Le/a/v2/l$a;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/v2/o;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/v2/o$a;->a:Le/a/v2/l$a;

    return-void
.end method
