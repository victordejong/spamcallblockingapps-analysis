.class public final Lcom/truecaller/suspension/UnsuspensionMethod$Support;
.super Lcom/truecaller/suspension/UnsuspensionMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/suspension/UnsuspensionMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Support"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/suspension/UnsuspensionMethod;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Lcom/truecaller/suspension/UnsuspensionMethod$Support;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/suspension/UnsuspensionMethod$Support;->b:Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;

    return-void
.end method
