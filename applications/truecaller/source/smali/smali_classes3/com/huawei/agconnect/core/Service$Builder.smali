.class public Lcom/huawei/agconnect/core/Service$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/agconnect/core/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/huawei/agconnect/core/Service;
    .locals 4

    iget-object v0, p0, Lcom/huawei/agconnect/core/Service$Builder;->a:Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/huawei/agconnect/core/Service$Builder;->b:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/agconnect/core/Service$Builder;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/agconnect/core/Service;

    iget-object v1, p0, Lcom/huawei/agconnect/core/Service$Builder;->a:Ljava/lang/Class;

    iget-object v3, p0, Lcom/huawei/agconnect/core/Service$Builder;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/agconnect/core/Service;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/huawei/agconnect/core/Service$1;)V

    iget-boolean v1, p0, Lcom/huawei/agconnect/core/Service$Builder;->d:Z

    invoke-static {v0, v1}, Lcom/huawei/agconnect/core/Service;->a(Lcom/huawei/agconnect/core/Service;Z)Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the clazz parameter cant be interface type or not public"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/huawei/agconnect/core/Service$Builder;->c:Ljava/lang/Object;

    if-eqz v1, :cond_2

    new-instance v3, Lcom/huawei/agconnect/core/Service;

    invoke-direct {v3, v0, v1, v2}, Lcom/huawei/agconnect/core/Service;-><init>(Ljava/lang/Class;Ljava/lang/Object;Lcom/huawei/agconnect/core/Service$1;)V

    iget-boolean v0, p0, Lcom/huawei/agconnect/core/Service$Builder;->d:Z

    invoke-static {v3, v0}, Lcom/huawei/agconnect/core/Service;->a(Lcom/huawei/agconnect/core/Service;Z)Z

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the clazz or object parameter must set one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the interface parameter cannot be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSingleton(Z)Lcom/huawei/agconnect/core/Service$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/agconnect/core/Service$Builder;->d:Z

    return-object p0
.end method

.method public setClass(Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/huawei/agconnect/core/Service$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/huawei/agconnect/core/Service$Builder;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public setInterface(Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/huawei/agconnect/core/Service$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/huawei/agconnect/core/Service$Builder;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public setObject(Ljava/lang/Object;)Lcom/huawei/agconnect/core/Service$Builder;
    .locals 0

    iput-object p1, p0, Lcom/huawei/agconnect/core/Service$Builder;->c:Ljava/lang/Object;

    return-object p0
.end method
