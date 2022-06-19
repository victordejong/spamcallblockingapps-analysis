.class public final Lcom/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/d/c/z/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity$a;

    invoke-direct {v0}, Lcom/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity$a;-><init>()V

    sput-object v0, Lcom/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity$a;->b:Lcom/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Le/a/d/c/z/e;

    invoke-direct {v0}, Le/a/d/c/z/e;-><init>()V

    return-object v0
.end method
