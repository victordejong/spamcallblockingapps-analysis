.class public final Le/a/d/c0/x1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x2f

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$raw;->tc_voip_tone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/d/c0/x1/h;->a:Ljava/lang/String;

    return-void
.end method
