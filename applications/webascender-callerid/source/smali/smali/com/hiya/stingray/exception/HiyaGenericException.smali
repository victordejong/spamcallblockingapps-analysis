.class public Lcom/hiya/stingray/exception/HiyaGenericException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/exception/b;


# instance fields
.field private f:Lg/g/a/a/b;

.field private g:Lcom/hiya/stingray/exception/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 11
    sget-object v0, Lg/g/a/a/d;->UNDEFINED:Lg/g/a/a/d;

    iput-object v0, p0, Lcom/hiya/stingray/exception/HiyaGenericException;->f:Lg/g/a/a/b;

    .line 12
    sget-object v0, Lcom/hiya/stingray/exception/a;->UNKNOWN_ERROR:Lcom/hiya/stingray/exception/a;

    iput-object v0, p0, Lcom/hiya/stingray/exception/HiyaGenericException;->g:Lcom/hiya/stingray/exception/a;

    return-void
.end method

.method public constructor <init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hiya/stingray/exception/HiyaGenericException;-><init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    sget-object p2, Lg/g/a/a/d;->UNDEFINED:Lg/g/a/a/d;

    iput-object p2, p0, Lcom/hiya/stingray/exception/HiyaGenericException;->f:Lg/g/a/a/b;

    .line 4
    sget-object p2, Lcom/hiya/stingray/exception/a;->UNKNOWN_ERROR:Lcom/hiya/stingray/exception/a;

    iput-object p2, p0, Lcom/hiya/stingray/exception/HiyaGenericException;->g:Lcom/hiya/stingray/exception/a;

    .line 5
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/exception/HiyaGenericException;->c(Lg/g/a/a/b;)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/hiya/stingray/exception/HiyaGenericException;->d(Lcom/hiya/stingray/exception/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object p1, Lg/g/a/a/d;->UNDEFINED:Lg/g/a/a/d;

    iput-object p1, p0, Lcom/hiya/stingray/exception/HiyaGenericException;->f:Lg/g/a/a/b;

    .line 9
    sget-object p1, Lcom/hiya/stingray/exception/a;->UNKNOWN_ERROR:Lcom/hiya/stingray/exception/a;

    iput-object p1, p0, Lcom/hiya/stingray/exception/HiyaGenericException;->g:Lcom/hiya/stingray/exception/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/stingray/exception/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/exception/HiyaGenericException;->g:Lcom/hiya/stingray/exception/a;

    return-object v0
.end method

.method public b()Lg/g/a/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/exception/HiyaGenericException;->f:Lg/g/a/a/b;

    return-object v0
.end method

.method public c(Lg/g/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/exception/HiyaGenericException;->f:Lg/g/a/a/b;

    return-void
.end method

.method public d(Lcom/hiya/stingray/exception/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/exception/HiyaGenericException;->g:Lcom/hiya/stingray/exception/a;

    return-void
.end method
