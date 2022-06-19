.class final Lcom/revenuecat/purchases/PurchasesKt$sam$java_lang_Runnable$0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic function:Lkotlin/w/b/a;


# direct methods
.method constructor <init>(Lkotlin/w/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/PurchasesKt$sam$java_lang_Runnable$0;->function:Lkotlin/w/b/a;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/revenuecat/purchases/PurchasesKt$sam$java_lang_Runnable$0;->function:Lkotlin/w/b/a;

    invoke-interface {v0}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "invoke(...)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
