.class public Lcom/hiya/stingray/exception/HiyaDbException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/exception/b;


# instance fields
.field private f:Lg/g/a/a/b;

.field private g:Lcom/hiya/stingray/exception/a;


# direct methods
.method public constructor <init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p2, Lg/g/a/a/d;->UNDEFINED:Lg/g/a/a/d;

    iput-object p2, p0, Lcom/hiya/stingray/exception/HiyaDbException;->f:Lg/g/a/a/b;

    .line 3
    sget-object p2, Lcom/hiya/stingray/exception/a;->UNKNOWN_ERROR:Lcom/hiya/stingray/exception/a;

    iput-object p2, p0, Lcom/hiya/stingray/exception/HiyaDbException;->g:Lcom/hiya/stingray/exception/a;

    .line 4
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/exception/HiyaDbException;->c(Lg/g/a/a/b;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/hiya/stingray/exception/HiyaDbException;->d(Lcom/hiya/stingray/exception/a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/stingray/exception/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/exception/HiyaDbException;->g:Lcom/hiya/stingray/exception/a;

    return-object v0
.end method

.method public b()Lg/g/a/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/exception/HiyaDbException;->f:Lg/g/a/a/b;

    return-object v0
.end method

.method public c(Lg/g/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/exception/HiyaDbException;->f:Lg/g/a/a/b;

    return-void
.end method

.method public d(Lcom/hiya/stingray/exception/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/exception/HiyaDbException;->g:Lcom/hiya/stingray/exception/a;

    return-void
.end method
