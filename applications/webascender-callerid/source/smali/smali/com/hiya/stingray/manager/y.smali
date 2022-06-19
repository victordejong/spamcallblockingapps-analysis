.class public final synthetic Lcom/hiya/stingray/manager/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/p;


# instance fields
.field public final synthetic f:J

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/hiya/stingray/manager/y;->f:J

    iput-wide p3, p0, Lcom/hiya/stingray/manager/y;->g:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-wide v0, p0, Lcom/hiya/stingray/manager/y;->f:J

    iget-wide v2, p0, Lcom/hiya/stingray/manager/y;->g:J

    check-cast p1, Lcom/hiya/stingray/t/e0;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/hiya/stingray/manager/o1;->M(JJLcom/hiya/stingray/t/e0;)Z

    move-result p1

    return p1
.end method
