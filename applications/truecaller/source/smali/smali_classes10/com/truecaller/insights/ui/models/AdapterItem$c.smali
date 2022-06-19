.class public final Lcom/truecaller/insights/ui/models/AdapterItem$c;
.super Lcom/truecaller/insights/ui/models/AdapterItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/ui/models/AdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/insights/ui/models/AdapterItem;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$c;->a:Z

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    const-wide/16 v0, -0x45b

    return-wide v0
.end method
