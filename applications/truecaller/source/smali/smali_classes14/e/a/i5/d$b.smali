.class public final Le/a/i5/d$b;
.super Le/a/i5/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .line 1
    sget v2, Lcom/truecaller/themes/R$string;->SettingsThemeDark:I

    .line 2
    sget v3, Lcom/truecaller/themes/R$style;->Theme_Truecaller_Dark:I

    const-string v1, "DARK"

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Le/a/i5/d;-><init>(Ljava/lang/String;IIILs1/z/c/f;)V

    return-void
.end method
