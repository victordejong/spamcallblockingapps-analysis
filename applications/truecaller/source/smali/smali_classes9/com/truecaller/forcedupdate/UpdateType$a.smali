.class public final Lcom/truecaller/forcedupdate/UpdateType$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/forcedupdate/UpdateType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/truecaller/forcedupdate/UpdateType;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/truecaller/forcedupdate/UpdateType;->NONE:Lcom/truecaller/forcedupdate/UpdateType;

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/truecaller/forcedupdate/UpdateType;->valueOf(Ljava/lang/String;)Lcom/truecaller/forcedupdate/UpdateType;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object p1, Lcom/truecaller/forcedupdate/UpdateType;->NONE:Lcom/truecaller/forcedupdate/UpdateType;

    :goto_0
    return-object p1
.end method
