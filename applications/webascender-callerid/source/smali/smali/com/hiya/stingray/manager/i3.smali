.class public Lcom/hiya/stingray/manager/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/e/e/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/i3$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lg/g/a/e/e/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/i3;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/i3$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/hiya/stingray/manager/i3$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/i3$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/hiya/stingray/manager/i3$b;-><init>(Ljava/lang/String;Lcom/hiya/stingray/manager/i3$a;)V

    return-object v0
.end method
