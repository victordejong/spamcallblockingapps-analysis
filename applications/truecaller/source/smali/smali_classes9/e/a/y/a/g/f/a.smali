.class public final Le/a/y/a/g/f/a;
.super Le/a/y/a/g/f/e$a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-string v0, "displayableUnicode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3fc00000    # 1.5f

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, -0x41000000    # -0.5f

    const v6, 0x3e4ccccd    # 0.2f

    move-object v1, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v1 .. v6}, Le/a/y/a/g/f/e$a;-><init>(Ljava/lang/String;FFFF)V

    return-void
.end method
