.class public final Lcom/hiya/common/phone/parser/PhoneParser$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/common/phone/parser/PhoneParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field private static a:Lcom/hiya/common/phone/parser/d;


# direct methods
.method public static a()Lcom/hiya/common/phone/parser/PhoneParser;
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/common/phone/parser/PhoneParser$c;->a:Lcom/hiya/common/phone/parser/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/hiya/common/phone/parser/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/hiya/common/phone/parser/PhoneParser$c;->a:Lcom/hiya/common/phone/parser/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/hiya/common/phone/parser/d;

    invoke-direct {v1}, Lcom/hiya/common/phone/parser/d;-><init>()V

    sput-object v1, Lcom/hiya/common/phone/parser/PhoneParser$c;->a:Lcom/hiya/common/phone/parser/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/hiya/common/phone/parser/PhoneParser$c;->a:Lcom/hiya/common/phone/parser/d;

    return-object v0
.end method
