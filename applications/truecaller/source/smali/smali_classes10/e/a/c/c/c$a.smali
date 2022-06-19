.class public final Le/a/c/c/c$a;
.super Le/a/c/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/c/r/h/f$b;


# direct methods
.method public constructor <init>(Le/a/c/r/h/f$b;)V
    .locals 1

    const-string v0, "parseResponse"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/c/c/c;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    return-void
.end method
