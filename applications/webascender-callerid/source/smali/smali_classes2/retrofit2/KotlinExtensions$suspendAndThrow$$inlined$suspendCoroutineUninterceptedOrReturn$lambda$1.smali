.class final Lretrofit2/KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/KotlinExtensions;->suspendAndThrow(Ljava/lang/Exception;Lkotlin/u/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/u/d;

.field final synthetic $this_suspendAndThrow$inlined:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lkotlin/u/d;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;->$continuation:Lkotlin/u/d;

    iput-object p2, p0, Lretrofit2/KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;->$this_suspendAndThrow$inlined:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lretrofit2/KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;->$continuation:Lkotlin/u/d;

    invoke-static {v0}, Lkotlin/u/i/b;->c(Lkotlin/u/d;)Lkotlin/u/d;

    move-result-object v0

    iget-object v1, p0, Lretrofit2/KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;->$this_suspendAndThrow$inlined:Ljava/lang/Exception;

    sget-object v2, Lkotlin/m;->f:Lkotlin/m$a;

    invoke-static {v1}, Lkotlin/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/u/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
