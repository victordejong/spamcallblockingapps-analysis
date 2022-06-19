.class public Lcom/hiya/stingray/manager/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/d1$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/hiya/stingray/manager/d1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/manager/d1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/manager/d1$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/manager/d1;->a:Lcom/hiya/stingray/manager/d1$a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/t/d0;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/d1;->a:Lcom/hiya/stingray/manager/d1$a;

    invoke-virtual {v0, p0, p1}, Lcom/hiya/stingray/manager/d1$a;->a(Lcom/hiya/stingray/t/d0;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/hiya/stingray/t/y0;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/d1;->a:Lcom/hiya/stingray/manager/d1$a;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/manager/d1$a;->e(Lcom/hiya/stingray/t/y0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
