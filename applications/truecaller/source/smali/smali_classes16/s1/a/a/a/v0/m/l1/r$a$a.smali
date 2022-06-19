.class public final Ls1/a/a/a/v0/m/l1/r$a$a;
.super Ls1/a/a/a/v0/m/l1/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/m/l1/r$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Ls1/a/a/a/v0/m/l1/r$a;-><init>(Ljava/lang/String;ILs1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/i1;)Ls1/a/a/a/v0/m/l1/r$a;
    .locals 1

    const-string v0, "nextType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/r$a;->c(Ls1/a/a/a/v0/m/i1;)Ls1/a/a/a/v0/m/l1/r$a;

    move-result-object p1

    return-object p1
.end method
