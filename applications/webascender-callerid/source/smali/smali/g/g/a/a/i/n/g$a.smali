.class final Lg/g/a/a/i/n/g$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/a/i/n/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lcom/google/gson/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lg/g/a/a/i/n/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/g/a/a/i/n/g$a;

    invoke-direct {v0}, Lg/g/a/a/i/n/g$a;-><init>()V

    sput-object v0, Lg/g/a/a/i/n/g$a;->INSTANCE:Lg/g/a/a/i/n/g$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/google/gson/f;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/a/i/n/g$a;->invoke()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method
