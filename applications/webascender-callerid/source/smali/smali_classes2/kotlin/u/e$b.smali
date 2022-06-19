.class public final Lkotlin/u/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/u/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/u/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/u/g$c<",
        "Lkotlin/u/e;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Lkotlin/u/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/u/e$b;

    invoke-direct {v0}, Lkotlin/u/e$b;-><init>()V

    sput-object v0, Lkotlin/u/e$b;->a:Lkotlin/u/e$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
