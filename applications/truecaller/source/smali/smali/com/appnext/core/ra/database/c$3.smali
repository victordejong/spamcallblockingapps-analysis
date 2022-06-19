.class public final Lcom/appnext/core/ra/database/c$3;
.super Ln3/c0/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/ra/database/c;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic eW:Lcom/appnext/core/ra/database/c;


# direct methods
.method public constructor <init>(Lcom/appnext/core/ra/database/c;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/ra/database/c$3;->eW:Lcom/appnext/core/ra/database/c;

    invoke-direct {p0, p2}, Ln3/c0/c0;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public final createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM recentapp WHERE storeDate NOT LIKE ?"

    return-object v0
.end method
