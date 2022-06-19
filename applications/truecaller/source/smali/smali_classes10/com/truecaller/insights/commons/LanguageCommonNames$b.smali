.class public final Lcom/truecaller/insights/commons/LanguageCommonNames$b;
.super Lcom/truecaller/insights/commons/LanguageCommonNames;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/commons/LanguageCommonNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0, p1, p2, v0}, Lcom/truecaller/insights/commons/LanguageCommonNames;-><init>(Ljava/lang/String;ILs1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Swedish"

    return-object v0
.end method
