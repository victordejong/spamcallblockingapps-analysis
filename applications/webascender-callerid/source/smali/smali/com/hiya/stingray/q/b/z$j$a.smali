.class final Lcom/hiya/stingray/q/b/z$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/h0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/z$j;->a(Lio/realm/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/hiya/stingray/q/b/z$j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/q/b/z$j$a;

    invoke-direct {v0}, Lcom/hiya/stingray/q/b/z$j$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/q/b/z$j$a;->a:Lcom/hiya/stingray/q/b/z$j$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/i;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "lastUpdatedTimeStamp"

    .line 2
    invoke-virtual {p1, v2, v0, v1}, Lio/realm/i;->c1(Ljava/lang/String;J)V

    return-void
.end method
