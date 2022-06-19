.class public final Le/a/i/f0/l/q$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/l/q$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/f0/l/b;

.field public final synthetic b:Lq3/a/n;


# direct methods
.method public constructor <init>(Le/a/i/f0/l/b;Lcom/google/android/gms/ads/AdLoader$Builder;Lq3/a/n;Le/a/i/f0/l/q$a;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/l/q$a$d;->a:Le/a/i/f0/l/b;

    iput-object p3, p0, Le/a/i/f0/l/q$a$d;->b:Lq3/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomClick(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/i/f0/l/q$a$d;->a:Le/a/i/f0/l/b;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    return-void
.end method
