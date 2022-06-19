.class public final Le/a/g3/r;
.super Le/a/g3/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/truecaller/clevertap/MonthSegment;)V
    .locals 1

    const-string v0, "monthSegment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProLastDate"

    invoke-direct {p0, v0, p1}, Le/a/g3/n;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
