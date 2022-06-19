.class public final synthetic Lcom/hiya/stingray/manager/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/hiya/stingray/manager/d;->f:J

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-wide v0, p0, Lcom/hiya/stingray/manager/d;->f:J

    check-cast p1, Lcom/hiya/stingray/t/e0;

    check-cast p2, Lcom/hiya/stingray/t/e0;

    invoke-static {v0, v1, p1, p2}, Lcom/hiya/stingray/manager/o1;->N(JLcom/hiya/stingray/t/e0;Lcom/hiya/stingray/t/e0;)I

    move-result p1

    return p1
.end method
