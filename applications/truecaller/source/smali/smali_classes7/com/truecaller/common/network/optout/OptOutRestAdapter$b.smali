.class public final Lcom/truecaller/common/network/optout/OptOutRestAdapter$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/common/network/optout/OptOutRestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/truecaller/common/network/optout/OptOutRestAdapter$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter$b;

    invoke-direct {v0}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$b;-><init>()V

    sput-object v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter$b;->b:Lcom/truecaller/common/network/optout/OptOutRestAdapter$b;

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
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->OPTOUT:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;

    return-object v0
.end method
