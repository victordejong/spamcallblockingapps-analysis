.class public final Lcom/truecaller/acs/qa/AcsQaActivity$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/acs/qa/AcsQaActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/data/entity/SearchWarning;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/truecaller/acs/qa/AcsQaActivity$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/acs/qa/AcsQaActivity$h;

    invoke-direct {v0}, Lcom/truecaller/acs/qa/AcsQaActivity$h;-><init>()V

    sput-object v0, Lcom/truecaller/acs/qa/AcsQaActivity$h;->b:Lcom/truecaller/acs/qa/AcsQaActivity$h;

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
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/SearchWarning;

    invoke-direct {v0}, Lcom/truecaller/data/entity/SearchWarning;-><init>()V

    const-string v1, "2147483647"

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/SearchWarning;->setId(Ljava/lang/String;)V

    return-object v0
.end method
