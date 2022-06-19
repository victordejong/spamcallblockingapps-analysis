.class public final Lcom/truecaller/log/UnmutedException$h;
.super Lcom/truecaller/log/UnmutedException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/log/UnmutedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const-string v0, "index="

    const-string v1, " size="

    .line 1
    invoke-static {v0, p1, v1, p2}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/truecaller/log/UnmutedException;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-void
.end method
